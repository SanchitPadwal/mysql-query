use demo;

create table product 
(ID INT Primary key,
product_name varchar(50),
price float);

INSERT INTO product values
(101,"pen",30.0),
(102,"Notbook",90.0); 

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
