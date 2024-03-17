-- JOIN -- 

create database demojoin;

Use demojoin;

-- studnet table --

CREATE TABLE student
( student_id int primary key,
  name varchar(50)
);

SELECT * FROM student;
 
INSERT INTO student
  (student_id , name )
  VALUES
  (101,"adam"),
  (102,"bob"),
  (103,"casey");
  
-- course table --  
  
CREATE TABLE course
( course_id int primary key,
  course varchar(50)
);


SELECT * FROM course;

INSERT INTO course
  (course_id , course )
  VALUES
  (102,"english"),
  (105,"math"),
  (103,"science"),
  (107,"computer science");
  
-- INNER JOIN --

SELECT * FROM student
INNER JOIN course
ON student.student_id = course.course_id;

-- LEFT JOIN -- 

SELECT * FROM student as s 
LEFT JOIN course as c 
ON s.student_id = c.course_id;

-- RIGHT JOIN -- 

SELECT * FROM student as s 
RIGHT JOIN course as c 
ON
s.student_id = c.course_id; 

-- FULL OUTER JOIN -- 

SELECT * FROM student as s
left JOIN course as c
ON s.student_id = c.course_id
UNION 
SELECT * FROM student as s
right JOIN course as c
ON s.student_id = c.course_id;

-- left ecclusive join -- 

select * from student as s 
left join course as c 
ON
s.student_id = c.course_id
where c.course_id IS NULL; 

-- right exclusive join -- 

select * from student as s 
right join course as c 
ON
s.student_id = c.course_id
where s.student_id IS NULL; 

-- full execlusive join -- 

 
SELECT * FROM student as s
left JOIN course as c
ON s.student_id = c.course_id
UNION 
SELECT * FROM student as s
right JOIN course as c
ON s.student_id = c.course_id
where s.student_id IS NULL OR c.course_id IS NULL;

-- Slef join -- 

-- self join explain diff table create , employee --
use demojoin;

CREATE TABLE Employee(
   id INT primary key,
   name varchar(50),
   manager_id int
);   

INSERT INTO Employee(id,name,manager_id)
Values
(101,"sachin",103),
(102,"virat",104),
(103,"Rohit",NULL),
(104,"YUVI",103); 

DROp table Employee;
SELECT * FROM Employee;  

SELECT * FROM Employee as a 
JOIN 
Employee as b 
ON a.id = b.manager_id;
-- final query  (Table join with itself)
SELECT a.name as manager_name , b.name
FROM Employee as a 
JOIN
Employee as b
ON a.id = b.manager_id;


-- ######## --