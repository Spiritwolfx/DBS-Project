SELECT 
    b.board_name AS Board,
    l.level_name AS Level,
    s.subject_name AS Subject,
    s.subject_id AS Code,
    ser.year AS Year,
    ser.session AS Session,
    c.component AS Paper,
    p.variant AS Var,
    p.qp_path AS 'Question Paper Path'
FROM Paper p
JOIN Components c ON p.comp_id = c.comp_id
JOIN Subject s    ON c.subj_id = s.subject_id
JOIN ExamBoard b  ON s.board_id = b.board_id
JOIN Level l      ON s.level_id = l.level_id
JOIN Series ser   ON p.series_id = ser.series_id
ORDER BY ser.year DESC, ser.session, s.subject_id, c.component, p.variant;

SELECT 
    s.subject_id, 
    s.subject_name, 
    t.topic_name, 
    st.subtopic_name 
FROM Subtopic st
JOIN Topic t ON st.topic_id = t.topic_id
JOIN Subject s ON t.syllabus_id = s.subject_id
ORDER BY s.subject_id, st.subtopic_number;