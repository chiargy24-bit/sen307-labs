USE sen307_2412750;
SELECT s.full_name AS student_name, s.matric_no, d.dept_name, c.course_code, c.course_title,
e.grade
FROMStudent s
JOIN Department d ON s.dept_id = d.dept_id
JOIN Enrolment e ON e.student_id = s.student_id
JOIN Course c ONc.course_id = e.course_id;
CREATE ORREPLACEVIEWvw_student_results AS
SELECT s.full_name, c.course_code, c.course_title, e.grade
FROMStudent s
JOIN Enrolment e ON e.student_id = s.student_id
JOIN Course c ONc.course_id = e.course_id;
SELECT * FROMvw_student_results;