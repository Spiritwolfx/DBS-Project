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

INSERT INTO Question (paper_id, question_number, total_marks) VALUES
-- 5054/11  P1 Variant 1  (will become question_id 1-40)
(1,1,1),(1,2,1),(1,3,1),(1,4,1),(1,5,1),(1,6,1),(1,7,1),(1,8,1),(1,9,1),(1,10,1),
(1,11,1),(1,12,1),(1,13,1),(1,14,1),(1,15,1),(1,16,1),(1,17,1),(1,18,1),(1,19,1),(1,20,1),
(1,21,1),(1,22,1),(1,23,1),(1,24,1),(1,25,1),(1,26,1),(1,27,1),(1,28,1),(1,29,1),(1,30,1),
(1,31,1),(1,32,1),(1,33,1),(1,34,1),(1,35,1),(1,36,1),(1,37,1),(1,38,1),(1,39,1),(1,40,1),
-- 5054/12  P1 Variant 2  (question_id 41-80)
(2,1,1),(2,2,1),(2,3,1),(2,4,1),(2,5,1),(2,6,1),(2,7,1),(2,8,1),(2,9,1),(2,10,1),
(2,11,1),(2,12,1),(2,13,1),(2,14,1),(2,15,1),(2,16,1),(2,17,1),(2,18,1),(2,19,1),(2,20,1),
(2,21,1),(2,22,1),(2,23,1),(2,24,1),(2,25,1),(2,26,1),(2,27,1),(2,28,1),(2,29,1),(2,30,1),
(2,31,1),(2,32,1),(2,33,1),(2,34,1),(2,35,1),(2,36,1),(2,37,1),(2,38,1),(2,39,1),(2,40,1),
-- 5054/21  P2 Variant 1  (question_id 81-91)
(3,1,9),(3,2,7),(3,3,6),(3,4,8),(3,5,7),(3,6,6),(3,7,7),(3,8,8),(3,9,7),(3,10,8),(3,11,7),
-- 5054/22  P2 Variant 2  (question_id 92-101)
(4,1,8),(4,2,8),(4,3,9),(4,4,9),(4,5,8),(4,6,9),(4,7,6),(4,8,7),(4,9,7),(4,10,9),
-- 5054/41  P4 Variant 1  (question_id 102-105)
(5,1,10),(5,2,10),(5,3,14),(5,4,6),
-- 5054/42  P4 Variant 2  (question_id 106-109)
(6,1,10),(6,2,10),(6,3,14),(6,4,6);


-- ============================================================
--  QUESTION PARTS
--  P1 MCQ: one part per question, label='q', marks=1
--  P2/P4:  real sub-parts with marks taken from the paper
--  part_id auto-increments from 1
-- ============================================================

INSERT INTO QuestionPart (question_id, part_label, marks, part_text, answer_text) VALUES
-- ── 5054/11  P1 V1  Q1-40  (part_id 1-40) ──────────────────
(1,  'q',1,'Most suitable instrument to measure circumference of a football','B'),
(2,  'q',1,'Which equation contains two vector quantities','A'),
(3,  'q',1,'Resultant of 6.0N and 8.0N forces','D'),
(4,  'q',1,'Distance-time graph matching given speed-time graph','A'),
(5,  'q',1,'Mass of object from weight difference on Earth and Mars','A'),
(6,  'q',1,'Equipment to determine density of solid metal cube','B'),
(7,  'q',1,'Mass of trolley from resultant force and acceleration','C'),
(8,  'q',1,'Spring constant from force-length graph','C'),
(9,  'q',1,'Weight of beam in equilibrium with 60N upward force','B'),
(10, 'q',1,'Expression for time from change in momentum and force','A'),
(11, 'q',1,'Useful work done lifting stone up ramp','B'),
(12, 'q',1,'Energy store associated with burning candle','A'),
(13, 'q',1,'Average pressure under elephant on four feet','C'),
(14, 'q',1,'Shape and volume of a liquid at constant temperature','C'),
(15, 'q',1,'Forces and distances between particles solid vs liquid','B'),
(16, 'q',1,'Complete definition of latent heat','A'),
(17, 'q',1,'Explanation for thermal energy transfer between two solids','B'),
(18, 'q',1,'Thermal insulation with shortest payback period','D'),
(19, 'q',1,'Position of image formed by plane mirror','C'),
(20, 'q',1,'Angle mirror rotated to reflect light back along original path','A'),
(21, 'q',1,'Equation for refraction at critical angle in plastic block','C'),
(22, 'q',1,'Dispersion and colour at prism point X and screen point Z','C'),
(23, 'q',1,'EM spectrum: wavelength longer than visible and frequency greater than visible','A'),
(24, 'q',1,'States of matter ordered by speed of sound slowest to fastest','A'),
(25, 'q',1,'Which magnet arrangement causes repulsion','A'),
(26, 'q',1,'In which experiments does suspended magnet move','A'),
(27, 'q',1,'Charge on rod and charge movement when rubbed by cloth','D'),
(28, 'q',1,'Direction of force on positively charged object X in electric field','B'),
(29, 'q',1,'Advantage of three 1.5V cells in series','D'),
(30, 'q',1,'Resistance of LDR when potential divider output is 3.0V','C'),
(31, 'q',1,'Which students are correct about lamps in parallel','A'),
(32, 'q',1,'Action that produces EMF in opposite direction in wire XY','D'),
(33, 'q',1,'Maximum voltage from oscilloscope with Y-gain 2.0V/cm','A'),
(34, 'q',1,'What is scattered in alpha-particle scattering experiment','A'),
(35, 'q',1,'Comparison of atom P and Q as isotopes','C'),
(36, 'q',1,'Change in proton and nucleon number after alpha emission','A'),
(37, 'q',1,'Why beta-particles used for measuring paper thickness','A'),
(38, 'q',1,'Mass of tritium that decays in 36 years from 32mg sample','D'),
(39, 'q',1,'Average orbital speed of the Moon','B'),
(40, 'q',1,'Nuclear reaction in stable stars','D'),

-- ── 5054/12  P1 V2  Q1-40  (part_id 41-80) ─────────────────
(41, 'q',1,'Measuring device for 0.5m curved track length','A'),
(42, 'q',1,'Which row identifies acceleration displacement distance speed correctly','C'),
(43, 'q',1,'Size of resultant of 3.0N and 4.0N perpendicular forces','C'),
(44, 'q',1,'Speed of toy car at 10s from tangent to distance-time graph','C'),
(45, 'q',1,'Which balances measure mass correctly on the Moon','D'),
(46, 'q',1,'Mass and weight of probe on Earth given weight on Mars','C'),
(47, 'q',1,'Equipment to determine density of a liquid','B'),
(48, 'q',1,'Newton third law: same type and same object','D'),
(49, 'q',1,'Factors affecting braking distance','C'),
(50, 'q',1,'Limit of proportionality and spring constant from load-extension graph','C'),
(51, 'q',1,'Force and position to balance beam with 40N 20cm left of pivot','A'),
(52, 'q',1,'Work done by worker pulling rope through distance d','B'),
(53, 'q',1,'Energy store in battery connected to lamp','A'),
(54, 'q',1,'Property of both liquids and gases','C'),
(55, 'q',1,'Explanation for pressure-volume results at constant temperature','C'),
(56, 'q',1,'In which diagrams is thermal expansion useful','B'),
(57, 'q',1,'Why copper is better thermal conductor than glass','D'),
(58, 'q',1,'How thermal energy is transferred in liquid by convection','A'),
(59, 'q',1,'Characteristics of image formed by vertical plane mirror','B'),
(60, 'q',1,'Refractive index from angles 35 and 60 degrees','C'),
(61, 'q',1,'Diagram showing refraction at critical angle in semicircular block','B'),
(62, 'q',1,'Radioactive isotope suitable for measuring cracks in metal','B'),
(63, 'q',1,'Frequency range containing only ultrasound','D'),
(64, 'q',1,'What proves a metal bar is a permanent magnet','D'),
(65, 'q',1,'Direction of magnetic field at point shown near bar magnet','C'),
(66, 'q',1,'What happens as shoe becomes positively charged by friction','A'),
(67, 'q',1,'Direction and name of particles flowing in metal conductor','D'),
(68, 'q',1,'Advantage of three cells in parallel over single cell','C'),
(69, 'q',1,'Minimum and maximum resistance of three 15-ohm resistors','A'),
(70, 'q',1,'Effect on V1 and V2 when resistance of R increases','D'),
(71, 'q',1,'Cost of using 1500W microwave for 10 minutes at 24 cents/kWh','A'),
(72, 'q',1,'What does NOT affect magnitude of EMF induced in falling coil','C'),
(73, 'q',1,'What does alpha-particle scattering give evidence for','D'),
(74, 'q',1,'Composition of cobalt-59 nucleus','A'),
(75, 'q',1,'Number of electrons in neutral gold atom (79 protons 118 neutrons)','B'),
(76, 'q',1,'Types of radiation emitted based on corrected count rates with shields','C'),
(77, 'q',1,'Particle that causes uranium-235 to split in fission reactor','C'),
(78, 'q',1,'Purpose of moderators in nuclear reactors','D'),
(79, 'q',1,'Region of EM spectrum where Sun radiates most energy','A'),
(80, 'q',1,'Correct order of stages in star life cycle until red giant','D'),

-- ── 5054/21  P2 V1 ──────────────────────────────────────────
-- Q1 glider motion  (part_id 81-85)
(81,'a',   2,'Describe the motion of the glider in the first 12s','Uniform acceleration for first 6s then constant speed'),
(81,'b',   3,'Using increase in speed in first 6s calculate mass of glider','a=20/6=3.33 m/s2; m=F/a=1800/3.33=540 kg'),
(81,'c',   2,'Determine distance travelled by glider in first 6.0s','Area under graph = 0.5 x 6 x 20 = 60 m'),
(81,'d_i', 1,'State what is meant by a convection current','Circulation of fluid caused by density differences from uneven heating'),
(81,'d_ii',1,'Suggest how convection current supporting glider is formed','Ground warms air; warm air less dense and rises creating upward current'),
-- Q2 car-van collision  (part_id 86-90)
(82,'a_i', 1,'Define momentum','Mass multiplied by velocity'),
(82,'a_ii',1,'State unit of momentum','kg m/s'),
(82,'b',   2,'Calculate velocity v of car and van after collision','p=1100x10=11000; v=11000/4100=2.7 m/s'),
(82,'c_i', 2,'Calculate total kinetic energy after collision','KE=0.5x4100x2.7^2=15000 J'),
(82,'c_ii',1,'State energy transfer that occurs in collision','Kinetic energy transferred to thermal energy and sound'),
-- Q3 resistor circuit  (part_id 91-93)
(83,'a',2,'Calculate current in 400 ohm resistor (200 and 100 in parallel branch)','Parallel=66.7 ohm; total=466.7; I=12/466.7=0.026 A'),
(83,'b',2,'Calculate power produced in 400 ohm resistor','P=I^2 x R=0.026^2 x 400=0.27 W'),
(83,'c',2,'Draw circuit for largest possible current: all three resistors in parallel','All in parallel; ammeter in 100 ohm branch'),
-- Q4 pressure  (part_id 94-98)
(84,'a_i',  2,'Calculate pressure of finger on drawing pin (F=26N, A=5e-5 m^2)','P=F/A=26/5e-5=520000 Pa'),
(84,'a_ii', 1,'Compare force of finger on pin with force of pin on board','Equal and opposite (Newton third law)'),
(84,'a_iii',2,'Explain why pin goes into board but not into finger','Same force acts on both sides; pin tip has tiny area so pressure on board is enormous'),
(84,'b_i',  2,'Explain why water emerges at right angles to surface of bag','Pressure in liquid acts equally in all directions; only outward perpendicular component acts at hole'),
(84,'b_ii', 1,'Explain why water emerges faster from hole A than hole B','A is deeper; greater depth means greater pressure so greater speed'),
-- Q5 thermal physics  (part_id 99-102)
(85,'a',   2,'Explain using particles why liquids expand more than solids for same temperature rise','Weaker intermolecular forces in liquid allow particles to move further apart'),
(85,'b_i', 1,'State boiling point of water on Kelvin scale','373 K'),
(85,'b_ii',1,'Explain why energy needed even though temperature stays constant at boiling','Energy breaks bonds between molecules rather than increasing kinetic energy'),
(85,'c',   3,'Calculate specific heat capacity of metal (m=200g, 20W, 2min, 15 to 40C)','E=20x120=2400 J; c=E/mΔT=2400/(200x25)=0.48 J/g°C'),
-- Q6 lenses  (part_id 103-106)
(86,'a_i', 1,'Describe where display must be for lens to act as magnifying glass','Object must be placed within the focal length of the lens'),
(86,'a_ii',1,'Explain how a virtual image is formed','Diverging rays appear to come from a point; they do not actually meet'),
(86,'b_i', 3,'Draw ray diagram to show formation of virtual image I on Fig 6.3','Ray parallel to axis refracts through F; ray through optical centre goes straight; image where extensions meet on same side as object'),
(86,'b_ii',1,'Determine focal length of lens from ray diagram','Approximately 4 cm'),
-- Q7 wave diffraction  (part_id 107-111)
(87,'a',    1,'State one way student drawing of crests is wrong','Crests after gap should be circular/curved not straight parallel lines'),
(87,'b',    2,'Complete Fig 7.2 to show diffraction when gap smaller than wavelength','Semicircular crests spreading in all directions from the gap'),
(87,'c_i',  1,'Define wavelength','Distance between two adjacent crests or troughs'),
(87,'c_ii', 2,'Calculate frequency (v=6.0cm/s wavelength=2.0cm)','f=v/lambda=6.0/2.0=3.0 Hz'),
(87,'c_iii',1,'Calculate wavelength in shallow region (speed=4.0cm/s)','lambda=v/f=4.0/3.0=1.3 cm'),
-- Q8 practical electricity  (part_id 112-116)
(88,'a_i', 1,'State what is meant by efficiency','Ratio of useful energy output to total energy input'),
(88,'a_ii',1,'Suggest why efficiency of filament lamp is very low','Most energy wasted as heat/thermal radiation rather than light'),
(88,'b',   2,'Determine efficiency of LED (same light as 120W lamp at 6.2%)','Useful light=120x0.062=7.44W; efficiency=7.44/15=49.6%'),
(88,'c_i', 2,'Describe what happens when live wire touches metal surface','Large current flows through earth wire; fuse in live wire melts breaking circuit'),
(88,'c_ii',2,'Explain why person not protected when fuse is in earth wire','Current can flow through person to ground before reaching fuse in earth wire'),
-- Q9 AC generator / DC motor  (part_id 117-120)
(89,'a',    2,'Explain why voltage is induced in coil when it is turned','Coil cuts magnetic field lines; changing flux linkage induces EMF'),
(89,'b',    2,'Show voltage output when coil is in different positions','AB right=-6V; vertical AB top=0V; vertical AB bottom=0V'),
(89,'c_i',  2,'Draw how brushes connect to coil in DC motor','Split-ring commutator instead of slip rings'),
(89,'c_ii', 1,'State why forces act on sides of coil in DC motor','Current-carrying conductor in magnetic field experiences a force'),
-- Q10 radioactive decay  (part_id 121-124)
(90,'a',2,'Describe what happens during radioactive decay','Unstable nucleus emits radiation spontaneously and becomes a different nucleus'),
(90,'b',2,'Draw graph of count rate over 24000 years (t-half=6000y, initial=1600)','Exponential decay: 1600 at t=0; 800 at 6000; 400 at 12000; 200 at 18000; 100 at 24000'),
(90,'c',2,'Name apparatus and describe how count rate is measured','Geiger-Muller tube and counter; place near sample and record counts per minute'),
(90,'d',2,'Describe how count rate is used to find age of wood sample','Compare measured count rate to original known rate; each halving = one half-life = 6000 years'),
-- Q11 planets  (part_id 125-128)
(91,'a',2,'Complete table by adding names of three missing planets','Mercury; Jupiter; Uranus'),
(91,'b',2,'Calculate orbital speed of Mars (r=2.3e8 km, T=5.9e7 s)','v=2*pi*r/T=2*pi*2.3e8/5.9e7=24.5 km/s'),
(91,'c',1,'Describe relationship between distance from Sun and orbital period','As distance increases orbital period increases'),
(91,'d',2,'Describe relationship between distance and surface temperature including anomalies','Generally temperature decreases with increasing distance; Venus is anomaly due to greenhouse effect'),

-- ── 5054/22  P2 V2 ──────────────────────────────────────────
-- Q1 car speed-time graph  (part_id 129-133)
(92,'a',   2,'Describe motion of car shown in Fig 1.1','Constant speed for 10s then non-uniform deceleration until stopping'),
(92,'b_i', 1,'Name two forces causing change in motion after engine off at t=10s','Friction and air resistance'),
(92,'b_ii',1,'Suggest why graph is a curve after t=10s','Air resistance decreases as car slows so deceleration is not constant'),
(92,'c_i', 2,'Calculate change in momentum from 18m/s to 11m/s (m=1200kg)','delta_p=1200*(11-18)=-8400 kg m/s'),
(92,'c_ii',2,'Calculate average resultant force on car between t=10s and t=20s','F=delta_p/t=8400/10=840 N'),
-- Q2 scooter energy  (part_id 134-138)
(93,'a_i', 1,'State name of energy store in battery','Chemical energy'),
(93,'a_ii',2,'Describe stages of energy transfer from battery to kinetic energy of scooter','Battery does work on motor; motor does work on wheel; wheel accelerates scooter'),
(93,'b',   2,'Calculate kinetic energy of rider and scooter at 4.0m/s (m=70kg)','KE=0.5*70*16=560 J'),
(93,'c_i', 1,'Define kilowatt-hour','Energy used by a 1 kW device running for 1 hour'),
(93,'c_ii',2,'Calculate time to fully recharge battery (0.35kWh capacity, 70W supply)','t=E/P=0.35/0.07=5 hours'),
-- Q3 gas in tube  (part_id 139-142)
(94,'a_i', 1,'Describe why rotating tube from vertical to horizontal changes pressure of gas','Mercury column weight no longer acts fully along tube so pressure on gas decreases'),
(94,'a_ii',3,'Explain using particles why pressure decreases when volume increases','Particles have more room; hit walls less frequently; fewer collisions per unit area per second'),
(94,'b',   3,'Calculate pressure of gas (mercury 0.30m, density=14000, atm=1e5 Pa)','P_Hg=rho*g*h=14000*9.8*0.30=41160 Pa; P_gas=1e5+41160=141160 Pa'),
(94,'c',   2,'Sketch P-V graph as pressure decreases from 2P0 to 0.5P0','Hyperbolic curve through X; as P halves V doubles (Boyle law)'),
-- Q4 iron atoms / thermal  (part_id 143-147)
(95,'a_i',  1,'State lowest temperature on Celsius and Kelvin scales','-273 degrees C and 0 K'),
(95,'a_ii', 2,'Describe how particle motion changes as solid temperature increases','Particles vibrate faster and with greater amplitude about fixed positions'),
(95,'a_iii',2,'State what happens to internal energy and temperature as solid melts','Internal energy increases; temperature remains constant'),
(95,'b_i',  2,'Calculate energy change of water as it warms (m=100g, 25 to 44C, c=4.2)','E=100*4.2*19=7980 J'),
(95,'b_ii', 2,'Calculate specific heat capacity of iron (m=300g, 100 to 44C)','c=7980/(300*56)=0.475 J/g degrees C'),
-- Q5 water waves  (part_id 148-152)
(96,'a',    1,'Underline two other examples of transverse waves from the list','Seismic S-waves and X-rays'),
(96,'b_i',  3,'Calculate frequency and wavelength (speed=27cm/s, period=0.15s)','f=1/0.15=6.7 Hz; lambda=27/6.7=4.0 cm'),
(96,'b_ii', 2,'Draw two crests after glass block to show diffraction on Fig 5.1','Curved crests bending around right-hand edge of glass block'),
(96,'b_iii',1,'Describe how wave with smaller wavelength is made with wooden bar','Increase frequency of wooden bar oscillation'),
(96,'b_iv', 1,'Describe how decrease in wavelength affects diffraction','Diffraction decreases; waves spread less around obstacle'),
-- Q6 lamp and resistor circuit  (part_id 153-156)
(97,'a_i',  2,'Determine A2 A3 and V2 readings (A1=0.25A, V1=3.0V, supply=12V)','A2=0.25A; A3=sum at junction; V2=12-3=9V'),
(97,'a_ii', 2,'Calculate resistance of resistor R (V1=3.0V, I=0.25A)','R=V/I=3.0/0.25=12 ohm'),
(97,'a_iii',2,'State Ohm law','Current is proportional to pd across conductor at constant temperature'),
(97,'b',    3,'Determine EMF of second battery when lamp voltage is 6.0V (use graph)','From graph at 6V lamp current=0.3A; V_R=0.3*12=3.6V; EMF=6+3.6=9.6V'),
-- Q7 UV and critical angle  (part_id 157-161)
(98,'a_i',  1,'State two EM spectrum components with smaller wavelength than UV','X-rays and gamma rays'),
(98,'a_ii', 1,'State one useful application of ultraviolet radiation','Detecting forged banknotes or sterilisation'),
(98,'a_iii',1,'State one type of damage to eye from UV radiation','Cataracts or damage to cornea'),
(98,'b_i',  1,'State name given to 40 degree angle of incidence in semi-circular block','Critical angle'),
(98,'b_ii', 2,'Calculate refractive index of glass (critical angle=40 degrees)','n=1/sin40=1/0.643=1.56'),
-- Q8 transformer  (part_id 162-165)
(99,'a',1,'State material used for core of transformer','Soft iron'),
(99,'b',3,'Explain how alternating voltage is produced in secondary coil','AC in primary creates alternating B field in core; changing flux induces alternating EMF in secondary'),
(99,'c',2,'Calculate turns on secondary (Np=4600, Vp=230V, Vs=5.0V)','Ns=Np*Vs/Vp=4600*5/230=100 turns'),
(99,'d',1,'State one change to make step-up transformer','Increase number of turns on secondary coil'),
-- Q9 alpha beta gamma source  (part_id 166-170)
(100,'a_i', 1,'State which radiation produces strongest ionising effect','Alpha particles'),
(100,'a_ii',1,'State which radiation is deflected most by magnetic field','Beta particles'),
(100,'b_i', 3,'Explain how readings show source emits beta and gamma (800 drops to 200 with 5mm metal)','Metal stops beta so reduction from 800 to 200 shows beta present; residual 200 penetrates metal indicating gamma'),
(100,'b_ii',1,'State why readings cannot show source emits alpha','Alpha particles stopped by 10cm of air before reaching GM tube'),
(100,'c',   1,'Describe one way radioactive source is moved safely in school lab','Use long tongs or forceps to maximise distance from body'),
-- Q10 stars and universe  (part_id 171-175)
(101,'a_i', 1,'State what is meant by a light-year','Distance light travels in vacuum in one year'),
(101,'a_ii',1,'State approximate diameter of Milky Way galaxy','100 000 light-years'),
(101,'b_i', 2,'Complete life cycle stages of massive star after hydrogen used up','Red supergiant then supernova then neutron star or black hole'),
(101,'b_ii',1,'State stage where heavy elements are formed','Supernova'),
(101,'c',   4,'Explain one observation that supports Big Bang Theory','Redshift observed in light from distant galaxies shows universe is expanding consistent with origin in Big Bang'),

-- ── 5054/41  P4 V1 ──────────────────────────────────────────
-- Q1 specific heat capacity investigation  (part_id 176-182)
(102,'a',    1,'Record temperature theta1 from thermometer in Fig 1.1','20 degrees C (from diagram)'),
(102,'b_i',  1,'Calculate temperature change theta2 minus theta1 from Fig 1.3','30 degrees C (read from thermometer)'),
(102,'b_ii', 2,'Describe how to ensure theta2 is measured as accurately as possible','Stir water; keep thermometer in; read at eye level; record maximum value'),
(102,'b_iii',1,'Suggest why special glass beaker is suitable for experiment','Low heat capacity so absorbs minimal energy and does not affect results'),
(102,'b_iv', 1,'Calculate specific heat capacity cm using given equation','cm=4.2*(theta2-theta1)/(2*(100-theta2)); substitute readings to get value'),
(102,'c_i',  2,'Describe two sources of error in determining cm','1. Heat lost to surroundings during transfer; 2. temperature of mass drops while being moved'),
(102,'c_ii', 2,'Suggest two improvements to the method','1. Use insulated beaker; 2. reduce transfer time or use automated transfer'),
-- Q2 thermistor investigation  (part_id 183-189)
(103,'a',    3,'Draw circuit diagram of thermistor circuit from Fig 2.1','Battery + switch + resistor + thermistor in series; voltmeter in parallel across thermistor'),
(103,'b',    1,'Record voltmeter reading VW at room temperature from Fig 2.3','2.4 V'),
(103,'c',    1,'Record voltmeter reading VC when thermistor in ice water from Fig 2.5','3.6 V'),
(103,'d_i',  2,'Calculate average voltage change per degree ΔVAV','ΔVAV=(VC-VW)/(TW-TC)=(3.6-2.4)/(20-0)=0.06 V/degree C'),
(103,'d_ii', 1,'Predict voltage VPB at body temperature 37 degrees C','VPB=VW+(37*ΔVAV)=2.4+(37*0.06)=4.62 V'),
(103,'d_iii',2,'State whether VPB and VAB are equal within 10% accuracy; support with calculation','10% of VPB=0.462; difference=|4.62-0.80|=3.82 which is greater than 0.462; NOT equal'),
-- Q3 falling mass experiment  (part_id 190-195)
(104,'a_i',  1,'Record height h from metre rule in Fig 3.2','h=73 cm'),
(104,'a_ii', 2,'Describe one source of error measuring h and one improvement','Parallax when reading rule; improvement is to use set square or take reading at eye level'),
(104,'b_i',  2,'Determine accurate average time tav from three stop-watch readings','Remove anomalous 5.87s; average of 6.11 and 6.02 = 6.1 s'),
(104,'b_ii', 3,'Record measurement from (b)(i) and complete Table 3.1 headings and units','Headings: mass m/g | average time tav/s; add row 5.0 | 6.1'),
(104,'c',    4,'Plot graph of tav on y-axis against m on x-axis and draw best-fit curve','Smooth decreasing curve through all five points'),
(104,'d',    2,'Describe relationship between tav and m from graph','As mass increases average time decreases; relationship is non-linear'),
-- Q4 planning: propeller force vs voltage  (part_id 196)
(105,'q',    6,'Plan experiment: how force on balance varies with voltage of power supply','Set voltage 0 to 12V in steps; record voltmeter and balance readings; keep propeller height constant; plot force vs voltage'),

-- ── 5054/42  P4 V2 ──────────────────────────────────────────
-- Q1 capacity of drinks cup  (part_id 197-204)
(106,'a_i',  2,'Measure height h diameter D and diameter d of cup in Fig 1.1','h=8.0cm; D=7.0cm; d=5.0cm'),
(106,'a_ii', 1,'Calculate average diameter dA=(D+d)/2','dA=6.0 cm'),
(106,'a_iii',1,'Calculate V1=pi*dA^2*h/4','V1=pi*36*8/4=226 cm^3'),
(106,'b_i',  1,'Calculate average circumference C from string length l=87.9cm wrapped 5 times','C=87.9/5=17.6 cm'),
(106,'b_ii', 1,'Calculate V2=C^2*h/(4*pi)','V2=17.6^2*8/(4*pi)=197 cm^3'),
(106,'c_i',  1,'Write down reading R from measuring cylinder in Fig 1.2','R=60 cm^3'),
(106,'c_ii', 1,'Determine volume of water V3 in cup','V3=220-60=160 cm^3'),
(106,'d',    2,'State one reason each why V2 and V3 are not accurate','V2: cup not perfectly cylindrical; V3: cup may not be completely full / meniscus reading error'),
-- Q2 effective resistance  (part_id 205-211)
(107,'a_i',  2,'Record V1 and I1 from voltmeter and ammeter in Fig 2.2 and 2.3','V1=2.0V; I1=0.40A'),
(107,'a_ii', 1,'Calculate R1=V1/I1','R1=2.0/0.40=5.0 ohm'),
(107,'a_iii',1,'Suggest why switch is opened after readings taken','Prevents resistors heating up which would change their resistance'),
(107,'b',    1,'Calculate R2 and 2R2 (V2=2.8V I2=0.88A)','R2=3.2 ohm; 2R2=6.4 ohm'),
(107,'c',    2,'State whether R1 equals 2R2 within 10% accuracy with calculation','10% of R1=0.5; difference=|5.0-6.4|=1.4 which exceeds 0.5; not equal within 10%'),
(107,'d',    1,'Suggest observation supporting that lamp filament resistance changes','Lamps glow with different brightness in series vs parallel arrangement'),
(107,'e',    2,'Complete circuit diagram to show third way of connecting three lamps','Two lamps in parallel connected in series with one lamp'),
-- Q3 converging lens  (part_id 212-221)
(108,'a',    1,'Measure and record height H of triangular object in Fig 3.2','H=3.0 cm'),
(108,'b_i',  1,'Measure height h of image on screen in Fig 3.3 (u=20cm)','h=6.0 cm'),
(108,'b_ii', 1,'Calculate 1/h to 2 significant figures','1/h=0.17 cm^-1'),
(108,'c_i',  1,'Complete headers in Table 3.1 with appropriate units','h/cm and 1/h per cm'),
(108,'c_ii', 1,'Calculate remaining 1/h values','0.26; 0.38; 0.63; 0.91'),
(108,'d',    1,'Suggest why u values less than 20cm not used','Image larger than 10cm screen so cannot be fully captured'),
(108,'e',    4,'Plot graph of 1/h vs u and draw best-fit straight line','Straight line through origin with positive gradient'),
(108,'f_i',  2,'Calculate gradient m of best-fit line showing working on graph','m=delta(1/h)/delta(u); approximately 0.019 cm^-1 per cm'),
(108,'f_ii', 1,'Calculate focal length f using f=1/(m*H)','f=1/(0.019*3.0)=17.5 cm'),
(108,'g',    1,'Suggest one improvement to avoid hand obstructing light','Use a clamp or support to hold ruler beside screen without blocking light path'),
-- Q4 planning: ice melting vs insulation  (part_id 222)
(109,'q',    6,'Plan experiment: how cardboard thickness affects time for ice to melt','Vary layers of 2mm card around beaker; use same mass of ice and same volume of hot water each time; record time until ice melts; keep starting water temp constant');


-- ============================================================
--  PART-SUBTOPIC MAPPINGS
-- ============================================================

INSERT INTO PartSubtopic (part_id, subtopic_id) VALUES
-- P1 V1 (part_id 1-40)
(1,1),(2,1),(3,5),(4,2),(5,3),(6,4),(7,5),(8,5),(9,5),(10,6),
(11,7),(12,7),(13,8),(14,9),(15,9),(16,10),(17,11),(18,11),(19,13),(20,13),
(21,13),(22,13),(23,14),(24,15),(25,16),(26,16),(27,17),(28,17),(29,19),(30,19),
(31,19),(32,20),(33,20),(34,22),(35,22),(36,23),(37,23),(38,23),(39,24),(40,25),
-- P1 V2 (part_id 41-80)
(41,1),(42,1),(43,5),(44,2),(45,3),(46,3),(47,4),(48,5),(49,2),(50,5),
(51,5),(52,7),(53,7),(54,9),(55,9),(56,10),(57,11),(58,11),(59,13),(60,13),
(61,13),(62,23),(63,15),(64,16),(65,16),(66,17),(67,18),(68,19),(69,19),(70,19),
(71,21),(72,20),(73,22),(74,22),(75,22),(76,23),(77,23),(78,23),(79,14),(80,25),
-- P2 V1 Q1 glider (81-85)
(81,2),(82,5),(83,2),(84,11),(85,11),
-- P2 V1 Q2 collision (86-90)
(86,6),(87,6),(88,6),(89,7),(90,7),
-- P2 V1 Q3 circuit (91-93)
(91,19),(92,19),(93,19),
-- P2 V1 Q4 pressure (94-98)
(94,8),(95,8),(96,8),(97,8),(98,8),
-- P2 V1 Q5 thermal (99-102)
(99,9),(100,10),(101,10),(102,10),
-- P2 V1 Q6 lenses (103-106)
(103,13),(104,13),(105,13),(106,13),
-- P2 V1 Q7 waves (107-111)
(107,12),(108,12),(109,12),(110,12),(111,12),
-- P2 V1 Q8 practical electricity (112-116)
(112,7),(113,21),(114,21),(115,21),(116,21),
-- P2 V1 Q9 generator/motor (117-120)
(117,20),(118,20),(119,20),(120,20),
-- P2 V1 Q10 radioactivity (121-124)
(121,23),(122,23),(123,23),(124,23),
-- P2 V1 Q11 planets (125-128)
(125,24),(126,24),(127,24),(128,24),
-- P2 V2 Q1 car motion (129-133)
(129,2),(130,5),(131,2),(132,6),(133,6),
-- P2 V2 Q2 scooter (134-138)
(134,7),(135,7),(136,7),(137,21),(138,21),
-- P2 V2 Q3 gas pressure (139-142)
(139,8),(140,9),(141,8),(142,9),
-- P2 V2 Q4 thermal iron (143-147)
(143,10),(144,9),(145,10),(146,10),(147,10),
-- P2 V2 Q5 water waves (148-152)
(148,12),(149,12),(150,12),(151,12),(152,12),
-- P2 V2 Q6 circuits (153-156)
(153,19),(154,19),(155,18),(156,19),
-- P2 V2 Q7 UV and light (157-161)
(157,14),(158,14),(159,14),(160,13),(161,13),
-- P2 V2 Q8 transformer (162-165)
(162,20),(163,20),(164,20),(165,20),
-- P2 V2 Q9 radioactivity (166-170)
(166,23),(167,23),(168,23),(169,23),(170,23),
-- P2 V2 Q10 stars (171-175)
(171,25),(172,25),(173,25),(174,25),(175,25),
-- P4 V1 Q1 SHC (176-182)
(176,10),(177,10),(178,10),(179,10),(180,10),(181,10),(182,10),
-- P4 V1 Q2 thermistor (183-189)
(183,19),(184,18),(185,18),(186,18),(187,18),(188,18),(189,18),
-- P4 V1 Q3 falling mass (190-195)
(190,1),(191,1),(192,2),(193,2),(194,2),(195,2),
-- P4 V1 Q4 planning (196)
(196,20),
-- P4 V2 Q1 cup capacity (197-204)
(197,1),(198,1),(199,1),(200,1),(201,1),(202,4),(203,4),(204,1),
-- P4 V2 Q2 resistance (205-211)
(205,19),(206,19),(207,19),(208,19),(209,19),(210,19),(211,19),
-- P4 V2 Q3 converging lens (212-221)
(212,13),(213,13),(214,13),(215,13),(216,13),(217,13),(218,13),(219,13),(220,13),(221,13),
-- P4 V2 Q4 planning (222)
(221,11),

-- Multi-subtopic parts (parts that cross two topics)
-- Q2 P2V1: collision involves both momentum AND energy
(89,6),   -- KE after collision also uses momentum concept
-- Q4 P2V2 b_ii: SHC also involves states/particle model
(147,9),
-- Q8 P2V1 a_i: efficiency links energy and practical electricity
(112,21);