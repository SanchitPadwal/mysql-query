-- views -- 

use demojoin;

show tables;

select * from course;

create view course_temp As 
select course , course_id from course;

select * from course_temp;  -- course_temp is view name means it is virtual table --
  

