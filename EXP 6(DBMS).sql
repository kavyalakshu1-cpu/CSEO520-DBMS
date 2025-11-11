use sobitha;
select*from student;
select RegNo,Name,DOB from student;
select*from student where gender='m';
alter table student add courseno varchar(10);
update  student set courseno= 'C001';
insert into student values('C001');
set sql_safe_updates=0;
update  student set courseno= 'C001';
select*from student;
select*from student where courseno='C001';
select*from faculty3;
select*from faculty3 where doj<'2014-12-20';
select*from course1;
select*from course1 where hallno='101';
select*from student;
select*from student where name like '%an%';
select*from student where name like '%an';
select*from student where city like '%mnt%';
select*from student where name not like'   ';
select*from student where name like '%am%';

use sobitha;
select*from course1;
select coursetype from course1 where coursedesc IN('cs 101','math 103');
select*from student;
alter table student add score int(10);
set sql_safe_updates=0;
select courseno from student score where score between 80 and 90;
select avg(score)from student score where courseno ='C001';
select max(score),min(score) from student score where courseno='C001';
alter table student add coursename varchar(20);
update student set coursename=('cs');
update student set coursename=('maths');
update student set coursename=('ip');
update student set coursename=('probability');
update student set coursename=('python');
select max(score),min(score),avg(score) from student score group by coursename;
select sum(score)from student score;
alter table student add studentscore int(5);
update student set studentscore=('3');
update student set studentscore=('3');
update student set studentscore=('3');
update student set studentscore=('4');
update student set studentscore=('4');
select coursedesc,count(studentno)from score group by coursedesc;
select*from student;


use sobitha;
select coursename,count(courseno)from student group by coursename;
select coursename,count(coursename)from student group by coursename;



