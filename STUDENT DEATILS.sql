Use Introduction;

SET SQL_SAFE_UPDATES=0;

CREATE TABLE Student_list(
Student_id INT AUTO_INCREMENT KEY,
First_name VARCHAR(15),
Last_name VARCHAR(15),
Class VARCHAR(15),
Courses VARCHAR(15),
Age INT,
Score INT
);

INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(1, 'Olayemi', 'Saheed', 'SSS3', 'IRK', 15, 95);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(2, 'Olayiwola', 'Muhammad', 'SSS3', 'CHEMISTRY', 17, 100);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(3, 'Olowolagba', 'Samad', 'SSS3', 'TD', 19, 95);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(4, 'Olowolagba', 'Abdullah', 'SSS3', 'COMMERCE', 19, 90);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(5, 'Adeyeri', 'Muhmun', 'SSS3', 'ECONOMICS', 13, 98);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(6, 'Adebakin', 'Teslim', 'SSS3', 'GOVERNMENT', 16, 100);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(7, 'Oni', 'Abdullah', 'SSS3', 'PHYSICS', 15, 99);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(8, 'Kilasho', 'Abdulhameed', 'SSS3', 'GEOGRAPHY', 15, 95);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(9, 'Adeshina', 'Jamal', 'SSS3', 'ACCOUNTING', 14, 90);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(10, 'Yisa', 'Taofeek', 'SSS3', 'YORUBA', 19, 94);
INSERT INTO Student_list(Student_id,First_name,Last_name,Class,Courses,Age,Score)  VALUES(11, 'Alliy', 'Abdullah', 'SSS3', 'ARABIC', 15, 89);

DROP TABLE Student_list;

SELECT DISTINCT(Age) FROM Student_list;

SELECT POSITION('O' IN First_name) FROM Student_list WHERE First_name = 'Olayiwola';

SELECT DISTINCT(Score) FROM Student_list;

UPDATE Student_list SET Last_name = 'Muhmin' WHERE Last_name = 'Muhmun';

SELECT * FROM Student_list WHERE Score >89 AND  Score <100;

SELECT * FROM Student_list WHERE Age <=15 AND  Age <18;

SELECT * FROM Student_list WHERE Last_name LIKE '%A%'; 

SELECT * FROM Student_list WHERE First_name LIKE '%A'; 

SELECT * FROM Student_list WHERE First_name IN ('Olayiwola', 'Olayemi', 'Adebakin');

SELECT concat(First_name, "  ", Last_name) AS FULL_NAME FROM Student_list;

SELECT * FROM Student_list WHERE Age = 15 AND Score = 99;

SELECT * FROM Student_list WHERE Age <17 AND Score BETWEEN 85 AND 95;

SELECT * FROM Student_list;

CALL show_student_details('CHEMISTRY');
CALL get_student_list('Y');
