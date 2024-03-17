select * from student;

drop table student;

use demojoin;

CREATE TABLE student(
  rollno int primary key,
  name varchar(50),
  marks float,
  grade varchar(1),
  city varchar(50));
  
INSERT into student(rollno , name , marks , grade , city )
Values 
(101,"Anil",78,"C","Pune"),
(102,"bhumika",93, "A" , "Mumbai"),
(103,"chetan",85 ,  "B" , "Mumbai"),
(104,"dhruv",96,  "A" , "Delhi"),
(105,"emanuel",92 ,  "F" , "Delhi"),
(106,"farah",82 ,  "B" , "Delhi"); 

select * from student;



-- question 1 -> get name of all students who scored more than class avg --
-- 1. find the avg of class
-- 2. find the names of students with marks > avg

select * from student;

SELECT Avg(marks) FROM student;
-- 87.66 -- 

SELECT name,marks from student where marks > (select avg(marks) from student );

-- question 2  ------------
-- find the even roll number -- 
-- find the name of students with even roll no -- 

SELECT * FROM student where rollno % 2 = 0; 

SELECT name from student where rollno IN (102,104,106); 
 
SELECT name,marks from student where rollno IN (SELECT rollno FROM student where rollno % 2 = 0);

-- question 3 ----
-- find the max marks from the students of delhi 
-- step 1 - find of students of delhi 
-- step 2 - find their max marks using the sublist in step 1

SELECT * FROM student; 

SELECT * FROM student where city = "Delhi";
-- sub query --
SELECT MAX(marks) FROM (SELECT * FROM student where city = "Delhi") AS temp;

-- simple query --

SELECT MAX(marks) from student where city = "Delhi";

-- sub query in select statement -------

SELECT (SELECT max(marks) from student) , name from student; 


-- ################################# -- 