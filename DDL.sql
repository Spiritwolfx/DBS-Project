drop database Project;

create database Project;
use Project;

CREATE TABLE ExamBoard ( -- just stores who made the syllabus
    board_id   INT          NOT NULL AUTO_INCREMENT,
    board_name VARCHAR(100) NOT NULL,
 
    CONSTRAINT pk_examboard PRIMARY KEY (board_id),
    CONSTRAINT uq_examboard_name UNIQUE (board_name)   -- two boards can't have the same name
);

CREATE TABLE Level ( -- O Level, A Level, etcs
    level_id   INT         NOT NULL AUTO_INCREMENT,
    level_name VARCHAR(50) NOT NULL,
 
    CONSTRAINT pk_level PRIMARY KEY (level_id),
    CONSTRAINT uq_level_name UNIQUE (level_name)
);


CREATE TABLE Subject ( -- a subject belongs to a board AND a level
    subject_id   INT          NOT NULL ,
    board_id     INT          NOT NULL,   -- which board owns this subject
    level_id     INT          NOT NULL,   -- which level is this subject for
    subject_name VARCHAR(100) NOT NULL,
 
    CONSTRAINT pk_subject          PRIMARY KEY (subject_id),
    CONSTRAINT fk_subject_board    FOREIGN KEY (board_id)  REFERENCES ExamBoard(board_id),
    CONSTRAINT fk_subject_level    FOREIGN KEY (level_id)  REFERENCES Level(level_id)
);

CREATE TABLE Components ( -- a subject can have multiple components, currently only for o level physics
    comp_id   INT  NOT NULL AUTO_INCREMENT,
    subj_id   INT  NOT NULL,                        -- which subject this component belongs to
    component ENUM('P1','P2','P4','P6') NOT NULL,
    type      ENUM('MCQ','Structured','ATP') NOT NULL,
 
    CONSTRAINT pk_components        PRIMARY KEY (comp_id),
    CONSTRAINT fk_components_subject FOREIGN KEY (subj_id) REFERENCES Subject(subject_id)
);

CREATE TABLE Series ( -- papers reference a series so year+session are in one place
    series_id INT                  NOT NULL AUTO_INCREMENT,
    year      YEAR                 NOT NULL,
    session   ENUM('MAY','OCT')    NOT NULL,
 
    CONSTRAINT pk_series            PRIMARY KEY (series_id),
    CONSTRAINT uq_series_year_session UNIQUE (year, session)  -- can't have two May 2022 rows
);

CREATE TABLE Paper ( -- stores paths to the question paper and mark scheme files
    paper_id  INT  NOT NULL AUTO_INCREMENT,
    comp_id   INT  NOT NULL,   -- which component (P1/P2/P4/P6) this paper is for
    series_id INT  NOT NULL,   -- which sitting (year + session)
    variant   INT  NOT NULL,   -- 1, 2, or 3
    qp_path   TEXT,            -- file path to the question paper PDF
    ms_path   TEXT,            -- file path to the mark scheme PDF
 
    CONSTRAINT pk_paper          PRIMARY KEY (paper_id),
    CONSTRAINT fk_paper_comp     FOREIGN KEY (comp_id)   REFERENCES Components(comp_id),
    CONSTRAINT fk_paper_series   FOREIGN KEY (series_id) REFERENCES Series(series_id),
    CONSTRAINT uq_paper_unique   UNIQUE (comp_id, series_id, variant)  -- no duplicate papers
);

CREATE TABLE Topic ( -- top-level syllabus chapters, e.g. "Waves", "Forces"
    topic_id     INT          NOT NULL AUTO_INCREMENT,
    syllabus_id  INT          NOT NULL,   -- which subject's syllabus this topic is from
    topic_name   VARCHAR(150) NOT NULL,
    topic_number VARCHAR(10)  NOT NULL,   -- e.g. "3" or "4.1"
 
    CONSTRAINT pk_topic          PRIMARY KEY (topic_id),
    CONSTRAINT fk_topic_subject  FOREIGN KEY (syllabus_id) REFERENCES Subject(subject_id)
    -- note: syllabus_id here points to Subject because Subject IS the syllabus anchor
);

CREATE TABLE Subtopic ( -- subtopic_number is like "3.2" or "5.1.3"
    subtopic_id     INT          NOT NULL AUTO_INCREMENT,
    topic_id        INT          NOT NULL,   -- which topic this subtopic is under
    subtopic_name   VARCHAR(200) NOT NULL,
    subtopic_number VARCHAR(15)  NOT NULL,
 
    CONSTRAINT pk_subtopic        PRIMARY KEY (subtopic_id),
    CONSTRAINT fk_subtopic_topic  FOREIGN KEY (topic_id) REFERENCES Topic(topic_id)
);

CREATE TABLE Question ( -- one question per row, linked to a paper
    question_id     INT NOT NULL AUTO_INCREMENT,
    paper_id        INT NOT NULL,   -- which paper this question is from
    question_number INT NOT NULL,   -- Q1, Q2, Q3…
    total_marks     INT NOT NULL,
 
    CONSTRAINT pk_question        PRIMARY KEY (question_id),
    CONSTRAINT fk_question_paper  FOREIGN KEY (paper_id) REFERENCES Paper(paper_id),
    CONSTRAINT uq_question_in_paper UNIQUE (paper_id, question_number)  -- no duplicate Q numbers in a paper
);

CREATE TABLE QuestionPart ( -- each part has its own marks and can map to a different subtopic
    part_id     INT          NOT NULL AUTO_INCREMENT,
    question_id INT          NOT NULL,   -- which question this part belongs to
    part_label  VARCHAR(10)  NOT NULL,   -- e.g. "a", "b", "b_i", "b_ii"
    marks       INT          NOT NULL,
    part_text   TEXT,                    -- the actual question text (can be left empty for now)
    answer_text TEXT,                    -- mark scheme answer for this part
 
    CONSTRAINT pk_questionpart         PRIMARY KEY (part_id),
    CONSTRAINT fk_questionpart_question FOREIGN KEY (question_id) REFERENCES Question(question_id)
);

CREATE TABLE PartSubtopic ( -- links question parts to subtopics
    part_id     INT NOT NULL,   -- which question part
    subtopic_id INT NOT NULL,   -- which subtopic it's testing
 
    CONSTRAINT pk_partsubtopic          PRIMARY KEY (part_id, subtopic_id),
    CONSTRAINT fk_partsubtopic_part     FOREIGN KEY (part_id)     REFERENCES QuestionPart(part_id),
    CONSTRAINT fk_partsubtopic_subtopic FOREIGN KEY (subtopic_id) REFERENCES Subtopic(subtopic_id)
);