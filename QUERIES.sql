
-- ============================================================
-- QUERY 1 – JOIN
-- Full paper catalogue: show every paper with its subject,
-- board, level, session, year, component type, and variant.
-- Real-world use: browse available papers before downloading.
-- ============================================================
SELECT
    s.subject_id AS syllabus_code,
    s.subject_name,
    eb.board_name,
    l.level_name,
    sr.year,
    sr.session,
    c.component,
    c.type AS paper_type,
    p.variant,
    p.qp_path,
    p.ms_path
FROM Paper p
JOIN Components c ON p.comp_id = c.comp_id
JOIN Subject s ON c.subj_id = s.subject_id
JOIN ExamBoard eb ON s.board_id = eb.board_id
JOIN Level l ON s.level_id = l.level_id
JOIN Series sr ON p.series_id = sr.series_id
ORDER BY sr.year, sr.session, s.subject_id, c.component, p.variant; 


-- ============================================================
-- QUERY 2 – AGGREGATION WITH JOIN
-- Subtopic difficulty report: for each subtopic, count how
-- many question parts test it and sum their total marks.
-- Higher total marks = subtopic appears more heavily in exams.
-- Real-world use: identify high-weight topics to prioritise.
-- ============================================================

SELECT
    t.topic_number,
    t.topic_name,
    st.subtopic_number,
    st.subtopic_name,
    COUNT(ps.part_id) AS times_tested,
    SUM(qp.marks) AS total_marks_allocated
FROM Subtopic st
JOIN Topic t ON st.topic_id = t.topic_id
JOIN PartSubtopic ps ON st.subtopic_id = ps.subtopic_id
JOIN QuestionPart qp ON ps.part_id = qp.part_id
GROUP BY st.subtopic_id, t.topic_number, t.topic_name,
         st.subtopic_number, st.subtopic_name
ORDER BY total_marks_allocated DESC; 


-- ============================================================
-- QUERY 3 – NESTED SUBQUERY
-- Find all papers (within a given year range) that contain
-- at least one question part worth MORE marks than the
-- average part mark across ALL papers in that range.
-- Real-world use: locate "harder" papers for practice.
-- ============================================================

SELECT DISTINCT
    s.subject_id,
    s.subject_name,
    sr.year,
    sr.session,
    c.component,
    p.variant
FROM Paper p
JOIN Components c ON p.comp_id = c.comp_id
JOIN Subject s ON c.subj_id = s.subject_id
JOIN Series sr ON p.series_id = sr.series_id
WHERE sr.year BETWEEN 2023 AND 2024
  AND p.paper_id IN (
        SELECT DISTINCT q.paper_id
        FROM Question q
        JOIN QuestionPart qp ON q.question_id = qp.question_id
        WHERE qp.marks > (
            SELECT AVG(qp2.marks)
            FROM QuestionPart qp2
            JOIN Question q2 ON qp2.question_id = q2.question_id
            JOIN Paper p2 ON q2.paper_id = p2.paper_id
            JOIN Series sr2 ON p2.series_id = sr2.series_id
            WHERE sr2.year BETWEEN 2023 AND 2024
        )
  )
ORDER BY sr.year, sr.session, s.subject_id, c.component, p.variant; 


-- ============================================================
-- QUERY 4 – CORRELATED SUBQUERY
-- For each paper, show the question that has the HIGHEST
-- total_marks in that paper (correlated to each paper_id).
-- Real-world use: quickly find the "heaviest" question in
-- every paper to plan revision time.
-- ============================================================
SELECT
    p.paper_id,
    s.subject_name,
    sr.year,
    sr.session,
    c.component,
    p.variant,
    q.question_number,
    q.total_marks AS highest_question_marks
FROM Question q
JOIN Paper p ON q.paper_id = p.paper_id
JOIN Components c ON p.comp_id = c.comp_id
JOIN Subject s ON c.subj_id = s.subject_id
JOIN Series sr ON p.series_id = sr.series_id
WHERE q.total_marks = (
    SELECT MAX(q2.total_marks)
    FROM Question q2
    WHERE q2.paper_id = q.paper_id -- correlated: same paper
)
ORDER BY sr.year, sr.session, p.paper_id; 


-- ============================================================
-- QUERY 5 – CASE STATEMENT + AGGREGATION
-- Classify each subtopic by difficulty band based on the
-- average marks of parts that test it, then count subtopics
-- in each band per topic.
-- Real-world use: curriculum heatmap — which topics are
-- consistently tested at higher mark values.
-- ============================================================

SELECT
    t.topic_name,
    st.subtopic_name,
    ROUND(AVG(qp.marks), 2) AS avg_marks_per_part,
    CASE
        WHEN AVG(qp.marks) >= 3 THEN 'High Demand (≥3 marks)'
        WHEN AVG(qp.marks) >= 1.5 THEN 'Medium Demand (1.5–3 marks)'
        ELSE 'Low Demand (<1.5 marks)'
    END AS difficulty_band
FROM Subtopic st
JOIN Topic t ON st.topic_id = t.topic_id
JOIN PartSubtopic ps ON st.subtopic_id = ps.subtopic_id
JOIN QuestionPart qp ON ps.part_id = qp.part_id
GROUP BY st.subtopic_id, t.topic_name, st.subtopic_name
ORDER BY t.topic_name, avg_marks_per_part DESC; 


-- ============================================================
-- VIEW – PaperSummaryView
-- Restricted view: shows paper metadata WITHOUT file paths.
-- Grant this to students; keep paths for admin only.
-- ============================================================
CREATE OR REPLACE VIEW PaperSummaryView AS
SELECT
    p.paper_id,
    s.subject_id AS syllabus_code,
    s.subject_name,
    eb.board_name,
    l.level_name,
    sr.year,
    sr.session,
    c.component,
    c.type AS paper_type,
    p.variant
FROM Paper p
JOIN Components c ON p.comp_id = c.comp_id
JOIN Subject s ON c.subj_id = s.subject_id
JOIN ExamBoard eb ON s.board_id = eb.board_id
JOIN Level l ON s.level_id = l.level_id
JOIN Series sr ON p.series_id = sr.series_id;
-- ============================================================
-- QUERY 6 – QUERY ON VIEW (PaperSummaryView)
-- Student-facing: list all MCQ papers between 2023 and 2025
-- for GCE O Level Physics. Uses the restricted view.
-- ============================================================

SELECT *
FROM PaperSummaryView
WHERE board_name = 'GCE'
  AND level_name = 'O Level'
  AND subject_name = 'Physics'
  AND paper_type = 'MCQ'
  AND year BETWEEN 2023 AND 2025
ORDER BY year, session, variant; 



-- ============================================================
-- VIEW 2 – SubtopicCoverageView
-- Shows each subtopic with how many distinct papers test it.
-- Real-world use: see which subtopics recur most across papers.
-- ============================================================

CREATE OR REPLACE VIEW SubtopicCoverageView AS
SELECT
    st.subtopic_id,
    t.topic_name,
    st.subtopic_number,
    st.subtopic_name,
    COUNT(DISTINCT q.paper_id) AS papers_tested_in
FROM Subtopic st
JOIN Topic t ON st.topic_id = t.topic_id
JOIN PartSubtopic ps ON st.subtopic_id = ps.subtopic_id
JOIN QuestionPart qp ON ps.part_id = qp.part_id
JOIN Question q ON qp.question_id = q.question_id
GROUP BY st.subtopic_id, t.topic_name, st.subtopic_number, st.subtopic_name;
-- ============================================================
-- QUERY 7 – QUERY ON VIEW (SubtopicCoverageView)
-- Find the TOP 5 most-recurring subtopics across all papers.
-- Real-world use: tell students which subtopics to revise first.
-- ============================================================

SELECT
    topic_name,
    subtopic_number,
    subtopic_name,
    papers_tested_in
FROM SubtopicCoverageView
ORDER BY papers_tested_in DESC
LIMIT 5; 


-- ============================================================
-- QUERY 8 – REAL-WORLD REPORT
-- Per-paper breakdown: paper identity, total questions,
-- total marks, and average marks per question.
-- Shows papers ranked from most marks-heavy to least.
-- ============================================================

SELECT
    psv.year,
    psv.session,
    psv.syllabus_code,
    psv.subject_name,
    psv.component,
    psv.variant,
    COUNT(q.question_id) AS total_questions,
    SUM(q.total_marks) AS total_marks,
    ROUND(AVG(q.total_marks), 2) AS avg_marks_per_question
FROM PaperSummaryView psv
JOIN Question q ON q.paper_id = psv.paper_id
GROUP BY psv.paper_id, psv.year, psv.session,
         psv.syllabus_code, psv.subject_name,
         psv.component, psv.variant
ORDER BY total_marks DESC; 


-- ============================================================
-- QUERY 9 – NESTED SUBQUERY (real-world scenario)
-- Find papers from 2023–2024 that test MORE distinct
-- subtopics than the average paper in that range.
--
-- Real-world use:
-- Identify the most conceptually diverse papers for
-- broad-spectrum revision practice.
-- ============================================================

SELECT
    psv.year,
    psv.session,
    psv.syllabus_code,
    psv.subject_name,
    psv.component,
    psv.variant,
    COUNT(DISTINCT ps.subtopic_id) AS distinct_subtopics_tested,
    COUNT(DISTINCT q.question_id) AS total_questions
FROM PaperSummaryView psv
JOIN Question q
    ON q.paper_id = psv.paper_id
JOIN QuestionPart qp
    ON qp.question_id = q.question_id
JOIN PartSubtopic ps
    ON ps.part_id = qp.part_id
WHERE psv.year BETWEEN 2023 AND 2024
GROUP BY
    psv.paper_id,
    psv.year,
    psv.session,
    psv.syllabus_code,
    psv.subject_name,
    psv.component,
    psv.variant
HAVING COUNT(DISTINCT ps.subtopic_id) > (
    -- Average number of distinct subtopics per paper
    SELECT AVG(subtopic_count)
    FROM (
        SELECT COUNT(DISTINCT ps2.subtopic_id) AS subtopic_count
        FROM Question q2
        JOIN QuestionPart qp2
            ON q2.question_id = qp2.question_id
        JOIN PartSubtopic ps2
            ON qp2.part_id = ps2.part_id
        JOIN Paper p2
            ON q2.paper_id = p2.paper_id
        JOIN Series sr2
            ON p2.series_id = sr2.series_id
        WHERE sr2.year BETWEEN 2023 AND 2024
        GROUP BY q2.paper_id
    ) AS paper_subtopic_counts
)
ORDER BY distinct_subtopics_tested DESC,
         total_questions DESC; 



-- ============================================================
-- STORED PROCEDURE
-- GetPapersBySubtopicAndDifficulty
--
-- Given a subtopic_id and a minimum mark threshold, returns
-- all papers (with metadata) that have at least one question
-- part testing that subtopic at or above the given mark value.
--
-- Real-world use: a teacher wants papers that test, say,
-- "Radioactivity" with parts worth ≥ 2 marks each.
--
-- CALL GetPapersBySubtopicAndDifficulty(23, 2);
-- → papers with Radioactivity parts worth ≥ 2 marks
-- ============================================================

DROP PROCEDURE IF EXISTS GetPapersBySubtopicAndDifficulty;

DELIMITER $$

CREATE PROCEDURE GetPapersBySubtopicAndDifficulty(
    IN p_subtopic_id INT,
    IN p_min_marks INT
)
BEGIN
    -- Validate inputs
    IF p_subtopic_id IS NULL OR p_min_marks IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'subtopic_id and min_marks must not be NULL';
    END IF;

    SELECT DISTINCT
        psv.year,
        psv.session,
        psv.syllabus_code,
        psv.subject_name,
        psv.board_name,
        psv.level_name,
        psv.component,
        psv.variant,
        st.subtopic_number,
        st.subtopic_name,
        MAX(qp.marks) OVER (PARTITION BY psv.paper_id) AS max_part_marks_in_paper
    FROM PaperSummaryView psv
    JOIN Question q ON q.paper_id = psv.paper_id
    JOIN QuestionPart qp ON qp.question_id = q.question_id
    JOIN PartSubtopic ps ON ps.part_id = qp.part_id
    JOIN Subtopic st ON st.subtopic_id = ps.subtopic_id
    WHERE ps.subtopic_id = p_subtopic_id
      AND qp.marks >= p_min_marks
    ORDER BY psv.year, psv.session, psv.syllabus_code, psv.component, psv.variant;
END$$

DELIMITER ;

-- Example call:
CALL GetPapersBySubtopicAndDifficulty(23, 2); 


-- ============================================================
-- INDEX (created before queries that filter on these columns)
-- ============================================================

-- Speed up lookups when filtering questions by paper
CREATE INDEX idx_question_paper ON Question(paper_id);

-- Speed up subtopic lookups in PartSubtopic join
CREATE INDEX idx_partsubtopic_subtopic ON PartSubtopic(subtopic_id);

-- Speed up series lookups by year and session
CREATE INDEX idx_series_year_session ON Series(year, session); 
