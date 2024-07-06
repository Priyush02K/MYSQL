select * from students  order by age desc;
select distinct age from students  order by age asc;

select * from students;
select * from students where age is null;
select * from students where age is not null;
select * from students limit 3;
select * from students order by  age desc limit 3;

select * from students limit 5 offset 1;

