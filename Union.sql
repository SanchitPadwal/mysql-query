Use demojoin;

Show tables;

Select * from course;

select * from student;

-- union - duplicate not allowed , only unique value present
select * from course  
union 
select * from student;

-- union all -- duplicate also allowed
select * from course
union all
select * from student;
