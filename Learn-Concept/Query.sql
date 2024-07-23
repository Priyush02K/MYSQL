CREATE DATABASE college;
USE college;
CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1) ,
city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select * from student;

select name ,marks from student;

select distinct city from student;
select * from student where marks >80;
select * from student where city ="Mumbai";


-- oprator--

select * from student where marks>90 and city ="Mumbai";


select * from student where marks between 80 and 90;

select * from student where city in("Delhi","Mumbai");

select * from student where city not in("Delhi","Mumbai");

select * from student limit 3;

select * from student where marks>75 limit 3;

select * from student order by marks desc;

select * from student order by marks desc limit 3;

#aggregate func

select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;
select count(marks) from student;

#group By clause
select city from student group by city;

select city, count(rollno) from student group by city;

select city, avg(rollno) from student group by city;

select grade from student group by grade order by grade;

#having clause
select count(name) , city from student group by city having max(marks)>90;

select count(name) , city from student group by city having max(marks)>90;

#genral order

select city
from student
where grade ="A"
group by city
having max(marks)>=93
order by city asc;

#update
set sql_safe_updates =0;
update student set grade="O" where grade ="A";
select * from student;

#2
update student set marks= 82 where rollno=105;
select * from student;

#3
update student set grade="B" where marks between 80 and 90;
select * from student;

#4
update student set marks= marks +1;
select * from student;

#delete
update student set marks=12 where rollno=105;
delete from student where marks<33;
select * from student;
rollback;


#forgian key
CREATE TABLE dept (
id INT PRIMARY KEY,
name VARCHAR(50)
);

insert into dept
value
(101,"English"),
(102,"IT");

update dept set id=111 where id=101;


select * from dept;

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id int,
foreign key (dept_id)references dept(id)
on update cascade
on delete cascade #ek mai change hua to sub deta mai change hota hai
);
 drop table teacher;

insert into teacher 
values
(101, "Adam",101),
(102,"Eve",102);

select * from teacher;

#alter
alter table student add column age int not null default 19;
select * from student;

alter table student modify column age varchar(2);
select * from student;

alter table student change age stu_age int;
select * from student;

alter table student drop column stu_age ;
select * from student;

alter table student rename to stu;

truncate table student;

#join
create table newstudent(
	id int primary key,
    name varchar(50)
);

insert into newstudent(id, name)
values
(101,"adam"),
(102,"bob"),
(103,"casey");

select * from newstudent;


create table course(
	id int primary key,
    course varchar(50)
);

insert into course (id, course)
values
(102, "English"),
(105, "Math"),
(103, "Science"),
(107, "Computer Scince");

select * from course;

select * from newstudent  inner join course on newstudent.id =course.id;

#alice 
select * from newstudent as a  inner join course as b on a.id =b.id;

#left join
select * from newstudent  left join course on newstudent.id =course.id;

#right join
select * from newstudent  right join course on newstudent.id =course.id;

#full join(union)
select * from newstudent as a  left join course as b on a.id =b.id
union
select * from newstudent as a  right join course as b on a.id =b.id ;

#left exclusive join
select * from newstudent as a  left join course as b on a.id =b.id where b.id is null;

#right exclusive join
select * from newstudent as a  right join course as b on a.id =b.id where a.id is null;

#full exclusive join

#self join

create table employee ( 
	id int primary key,
    name varchar(20),
    manager_id int
);

insert into employee (id,name,manager_id)
values
(101,"adam",103),
(102,"bob",104),
(103,"casey",null),
(104,"donald",103);

select * from employee;

select * from employee as a join employee as b on a.id=b.manager_id;

select a.name as manager_name ,b.name from employee as a join employee as b on a.id=b.manager_id;


#unoin
select name from  employee union select name from employee;

select name from  employee union all select name from employee;

#sub Queries

create table stu2(
	 rollno int primary key,
     name varchar(20),
     marks int not null,
     grade varchar(1),
     city varchar(20)
);

insert into stu2 (rollno,name,marks,grade,city)
values
(101,"anil",78,"C","Pune"),
(102,"bhimika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",92,"F","Delhi"),
(106,"Farah",82,"B","Delhi");

select * from stu2;
select avg(marks) from stu2;
select name , marks from stu2 where marks>87.667; 

select name , marks from stu2 where marks> (select avg(marks) from stu2);

select rollno from stu2 where rollno % 2 =0;
select name ,rollno from stu2 where rollno in(102,104,106);

select name ,rollno from stu2 where rollno in(select rollno from stu2 where rollno % 2 =0); #subquiry

select * from stu2 where city="Delhi" ;

select max(marks) from (select * from stu2 where city="Delhi") as temp;

select (select max(marks)from stu2) ,name from stu2;

#mysql Views

create view  view1 as select rollno,name,marks from stu2;
select * from view1;

select * from view1 where marks>90;
drop view view1;

