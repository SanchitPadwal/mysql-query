-- practice QS -- 

-- create DB --
-- Inside DB create table --
-- Inser data into tabel --
-- select and view all your table data --

CREATE DATABASE Company; 

USE Company; 

CREATE TABLE Profix_company_staff(
            ID INT Primary key,
            Ename varchar(50),
            Salary varchar(50),
            Age INT NOT NULL);

SELECT * FROM Profix_company_staff;

INSERT INTO Profix_company_staff(
            ID, Ename,Salary,Age)
            VALUES
            (1,"adam",25000,29),
            (2,"bob",30000,26),
            (3,"casey",31000,30);
            
SELECT * FROM Profix_company_staff;
            