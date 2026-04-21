INSERT INTO ExamBoard(board_name)
VALUES 
('GCE'),
('IGCSE');

INSERT INTO Level (level_name) 
VALUES ('O Level'), ('A Level');

INSERT INTO Subject (subject_id, board_id, level_id, subject_name) 
VALUES 
('5054', 1, 1, 'Physics'), -- GCE O Level
('0625', 2, 1, 'Physics'), -- IGCSE O Level
('5070', 1, 1, 'Chemistry'), -- GCE O Level
('9701', 1, 2, 'Chemistry'), -- GCE A Level
('0620', 2, 1, 'Chemistry'), -- IGCSE O Level (Standard)
('9702', 1, 2, 'Physics'); -- GCE A Level

INSERT INTO Components (subj_id, component, type)
VALUES 
-- Cambridge O Level Physics (5054)
('5054', 'P1', 'MCQ'),
('5054', 'P2', 'Structured'),
('5054', 'P4', 'ATP'),

-- Cambridge IGCSE Physics (0625)
('0625', 'P2', 'MCQ'),
('0625', 'P4', 'Structured'),
('0625', 'P6', 'ATP');

INSERT INTO Series (year, session) 
VALUES 
(2023, 'MAY'), (2023, 'OCT'),
(2024, 'MAY'), (2024, 'OCT'),
(2025, 'MAY'), (2025, 'OCT');

INSERT INTO Paper (comp_id, series_id, variant, qp_path, ms_path) 
VALUES 
-- 2023 SERIES (Series 1 = MAY, Series 2 = OCT)
(1, 1, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s23_qp_11.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s23_ms_11.pdf'),
(1, 1, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s23_qp_12.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s23_ms_12.pdf'),
(2, 1, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s23_qp_21.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s23_ms_21.pdf'),
(2, 1, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s23_qp_22.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s23_ms_22.pdf'),
(3, 1, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s23_qp_41.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s23_ms_41.pdf'),
(3, 1, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s23_qp_42.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s23_ms_42.pdf'),

(1, 2, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w23_qp_11.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w23_ms_11.pdf'),
(1, 2, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w23_qp_12.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w23_ms_12.pdf'),
(2, 2, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w23_qp_21.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w23_ms_21.pdf'),
(2, 2, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w23_qp_22.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w23_ms_22.pdf'),
(3, 2, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w23_qp_41.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w23_ms_41.pdf'),
(3, 2, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w23_qp_42.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w23_ms_42.pdf'),

-- 2024 SERIES (Series 3 = MAY, Series 4 = OCT)
(1, 3, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s24_qp_11.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s24_ms_11.pdf'),
(1, 3, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s24_qp_12.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s24_ms_12.pdf'),
(2, 3, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s24_qp_21.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s24_ms_21.pdf'),
(2, 3, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s24_qp_22.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s24_ms_22.pdf'),
(3, 3, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s24_qp_41.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s24_ms_41.pdf'),
(3, 3, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s24_qp_42.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s24_ms_42.pdf'),

(1, 4, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w24_qp_11.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w24_ms_11.pdf'),
(1, 4, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w24_qp_12.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w24_ms_12.pdf'),
(2, 4, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w24_qp_21.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w24_ms_21.pdf'),
(2, 4, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w24_qp_22.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w24_ms_22.pdf'),
(3, 4, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w24_qp_41.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w24_ms_41.pdf'),
(3, 4, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w24_qp_42.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w24_ms_42.pdf'),

-- 2025 SERIES (Series 5 = MAY, Series 6 = OCT)
(1, 5, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s25_qp_11.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s25_ms_11.pdf'),
(1, 5, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s25_qp_12.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s25_ms_12.pdf'),
(2, 5, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s25_qp_21.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s25_ms_21.pdf'),
(2, 5, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s25_qp_22.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s25_ms_22.pdf'),
(3, 5, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_s25_qp_41.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s25_ms_41.pdf'),
(3, 5, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_s25_qp_42.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_s25_ms_42.pdf'),

(1, 6, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w25_qp_11.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w25_ms_11.pdf'),
(1, 6, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w25_qp_12.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w25_ms_12.pdf'),
(2, 6, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w25_qp_21.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w25_ms_21.pdf'),
(2, 6, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w25_qp_22.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w25_ms_22.pdf'),
(3, 6, 1, 'C:\\Users\\User\\DBS Project\\QP\\5054_w25_qp_41.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w25_ms_41.pdf'),
(3, 6, 2, 'C:\\Users\\User\\DBS Project\\QP\\5054_w25_qp_42.pdf', 'C:\\Users\\User\\DBS Project\\MS\\5054_w25_ms_42.pdf');

INSERT INTO Topic (syllabus_id, topic_name, topic_number)
VALUES 
 -- GCE --
(5054, 'Motion, Forces, and Energy', '1'),
(5054, 'Thermal Physics', '2'),
(5054, 'Waves', '3'),
(5054, 'Electricity and Magnetism', '4'),
(5054, 'Nuclear Physics', '5'),
(5054, 'Space Physics', '6'),

-- IGCSE --
('0625', 'Motion, Forces, and Energy', '1'),
('0625', 'Thermal Physics', '2'),
('0625', 'Waves', '3'),
('0625', 'Electricity and Magnetism', '4'),
('0625', 'Nuclear Physics', '5'),
('0625', 'Space Physics', '6');

 -- GCE --
INSERT INTO Subtopic (topic_id, subtopic_name, subtopic_number)
VALUES 
-- 1. Motion, Forces, and Energy (topic_id = 1)
(1, 'Physical quantities and measurement techniques', '1.1'),
(1, 'Motion (Kinematics)', '1.2'),
(1, 'Mass and weight', '1.3'),
(1, 'Density', '1.4'),
(1, 'Forces (Friction, Moments, Hooks Law)', '1.5'),
(1, 'Momentum', '1.6'),
(1, 'Energy, work, and power', '1.7'),
(1, 'Pressure', '1.8'),

-- 2. Thermal Physics (topic_id = 2)
(2, 'States of matter and the Particle model', '2.1'),
(2, 'Thermal properties and temperature', '2.2'),
(2, 'Transfer of thermal energy', '2.3'),

-- 3. Waves (topic_id = 3)
(3, 'General wave properties', '3.1'),
(3, 'Light (Reflection, Refraction, Lenses)', '3.2'),
(3, 'Electromagnetic spectrum', '3.3'),
(3, 'Sound', '3.4'),

-- 4. Electricity and Magnetism (topic_id = 4)
(4, 'Magnetism and electromagnetism', '4.1'),
(4, 'Static electricity', '4.2'),
(4, 'Electrical quantities', '4.3'),
(4, 'Electric circuits', '4.4'),
(4, 'Electromagnetic effects', '4.5'),
(4, 'Practical electricity', '4.6'),

-- 5. Nuclear Physics (topic_id = 5)
(5, 'The nuclear model of the atom', '5.1'),
(5, 'Radioactivity', '5.2'),

-- 6. Space Physics (topic_id = 6)
(6, 'Earth and the Solar System', '6.1'),
(6, 'Stars and the Universe', '6.2');

 -- IGCSE --
INSERT INTO Subtopic (topic_id, subtopic_name, subtopic_number)
VALUES 
-- 1. Motion, Forces, and Energy (topic_id = 7)
(7, 'Physical quantities and measurement techniques', '1.1'),
(7, 'Motion', '1.2'),
(7, 'Mass and weight', '1.3'),
(7, 'Forces', '1.4'),
(7, 'Momentum', '1.5'),
(7, 'Energy, work, and power', '1.6'),
(7, 'Pressure', '1.7'),

-- 2. Thermal Physics (topic_id = 8)
(8, 'Kinetic particle model of matter', '2.1'),
(8, 'Thermal properties and temperature', '2.2'),
(8, 'Transfer of thermal energy', '2.3'),

-- 3. Waves (topic_id = 9)
(9, 'General properties of waves', '3.1'),
(9, 'Light', '3.2'),
(9, 'Electromagnetic spectrum', '3.3'),
(9, 'Sound', '3.4'),

-- 4. Electricity and Magnetism (topic_id = 10)
(10, 'Simple phenomena of magnetism', '4.1'),
(10, 'Electrical quantities', '4.2'),
(10, 'Electric circuits', '4.3'),
(10, 'Electromagnetic effects', '4.4'),

-- 5. Nuclear Physics (topic_id = 11)
(11, 'The nuclear model of the atom', '5.1'),
(11, 'Radioactivity', '5.2'),

-- 6. Space Physics (topic_id = 12)
(12, 'Earth and the Solar System', '6.1'),
(12, 'Stars and the Universe', '6.2');