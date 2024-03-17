CREATE DATABASE Sample;

Use Sample;

CREATE TABLE Student(
     rollno int primary key,
     name varchar(50),
     marks int not null,
     grade varchar(1),
     city varchar(30)
);

INSERT INTO Student
          (rollno,name,marks,grade,city)
          VALUES
          (101,"Anil",78,"C","Pune"),
          (102,"bhumika",93,"A","Mumbai"),
          (103,"chetan",85,"B","Mumbai"),
          (104,"Dhruv",96,"A","Delhi"),
          (105,"Virat",91,"A","Delhi"),
          (106,"farah",12,"F","Delhi"),
          (107,"Rohit",82,"B","Mumbai");
  
  
SELECT * FROM Student; 
  -- where clause ...  operators --

SELECT * FROM Student where marks > 80;
 
SELECT * FROM Student where city = "delhi"; 

SELECT * FROM Student where marks+10 > 100;

SELECT * FROM Student where marks BETWEEN 80 and 90;

SELECT * FROM Student where city IN ( "delhi" , "mumbai" );

SELECT * FROM Student where city NOT IN ( "delhi" , "mumbai" );

-- ######################################## --

-- Limit clause  --

SELECT * FROM Student LIMIT 3;

SELECT * FROM Student where marks >75 LIMIT 3;

-- Order by cluse -- 

SELECT * FROM Student;

SELECT * FROM Student Order by  city ASC;

SELECT name , city FROM Student order by city desc; 

SELECT name , city FROM Student order by city asc; 
