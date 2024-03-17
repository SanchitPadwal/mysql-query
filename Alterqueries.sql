use demo;

create table product 
(ID INT Primary key,
product_name varchar(50),
price float);

INSERT INTO product 
(ID,product_name,price)
values
(101,"pen",30.0),
(102,"Notbook",90.0), 
(103,"book",211.0), 
(104,"eraser",05.0); 

SELECT * FROM product;


-- ADD COlumn and default value add 20 -- 
Alter table product 
ADD COLUMN product_weight INT NOT NULL DEFAULT 20;

-- MODIFY Column , INT to varchar --

Alter table product
MODIFY COLUMN product_weight varchar(2);  

--  Change columnn name ID to product_id-- 

Alter table product
CHANGE id ID INT;

-- Drop columnn - product_weight-- 

Alter table product
DROP COLUMN product_weight;

-- rename table name -- 

ALTER table product
rename pro;

-- ///////////////////////// -- 
SET SQL_SAFE_UPDATES = 0;
-- question --  

-- in product table --
-- 1st - change the name of "ID" to "product_id" -- 
-- 2nd - delete all product who price less than 10. -- 
-- 3rd - delete the column for grades -- 

select * from product; 

Alter table product
change column ID product_id int;
  
delete from product 
where price<10; 

Alter table product
add column suffer varchar(2);

Alter table product
drop column suffer;




