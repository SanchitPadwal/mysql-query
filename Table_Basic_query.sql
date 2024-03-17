-- create table --

use COLLEGE;

CREATE TABLE Teacher_staff(
   ID INT primary key,
   Teacher_name varchar(50),
   Subject_name varchar(50),
   Age INT NOT NULL
   );  
   
  select * from Teacher_staff; 
   
-- insert into ---

INSERT INTO Teacher_staff
       (ID,Teacher_name,Subject_name,Age)
       VALUES
       (101,"SACHIN","English",35),
       (102,"LAKSHMAN","Marathi",38),
       (103,"ZAHIR","Hindi",35),
       (104,"ANIL","Science",39),
       (105,"RAVI","Math",36);
       
-- single value insert --       
 
 INSERT INTO Teacher_staff VALUES (106,"RAHUL","History",40);
 
 SELECT * FROM Teacher_staff;
 
 SELECT ID , Teacher_name from Teacher_staff;
 
 -- ############################ -- 
 
 -- Update --

SET SQL_SAFE_UPDATES = 0; 

use COLLEGE;
 
select * from Teacher_staff; 
   
 
 UPDATE Teacher_staff
 SET Age = 40
where Age = 36; 

UPDATE Teacher_staff
SET Subject_name = "science part 1"
WHERE Subject_name="Science";

INSERT INTO Teacher_staff VALUES (107,"dimpi","science",29);

UPDATE Teacher_staff
SET Teacher_name="DIMPI" , Subject_name="science part 2"
WHERE ID=107;

-- Delete --

SELECT * FROM Teacher_staff;

INSERT INTO Teacher_staff VALUES (10,"dummy","nimda",12);

DELETE FROM Teacher_staff
where ID=10;
 
-- Alter -- 

Use COLLEGE;

SELECT * FROM student;

-- ADD -- 
Alter table student
add column weight int; 

-- DROP -- 
Alter table student
drop column weight; 

-- table rename -- 
Alter table student
rename to Age; 

Alter table Age
rename to student; 

-- change column(rename) -- 

ALTER TABLE student
change column age AGE INT;

-- modify column (modify datatype/constraint)

ALTER TABLE student
MODIFY AGE varchar(50);

ALTER TABLE student
MODIFY AGE INT;



-- /////////////////////////// --
 
 