-- Foreign key , cascade --

Use demo;

CREATE TABLE Department
(ID INT primary key,
Subject_name varchar(50)
); 

INSERT INTO Department values (101,"English");
INSERT INTO Department values (102,"IT");
  
SELECT * FROM Department;

UPDATE Department
SET id=111
where id =101;

CREATE TABLE Teacher
(ID INT primary key,
name varchar(50),
dept_id INT,
FOREIGN KEY(dept_id) references Department(ID)  
ON UPDATE CASCADE
ON DELETE cascade
); 

INSERT INTO Teacher values (101,"Adam",101);
INSERT INTO Teacher values (102,"Eve",102);


SELECT * FROM Teacher;