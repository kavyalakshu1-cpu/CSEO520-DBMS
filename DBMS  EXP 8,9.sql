use college;
CREATE TABLE STUD(regno int(10),name char(20),courseno varchar(20),marks int(10),facultydoj date, assessment int(10));
insert into stud values('12345','nani','C001','34','2005-05-12','5'),('12341','RAM','C001','80','2006-09-01','8'),('12343','RAJ','C001','67','2002-08-09','6');
SELEcT*FROM STUD WHERE MARKS>=(SELECT AVG(marks)from stud);
select name from stud where assessment>1;
select*from faculty order by doj limit 1;
select courseno,marks from stud where marks>(select avg(marks) from stud) order by courseno;

select faculty2.facno,faculty2.facname,department1.deptno,department1.deptname from faculty2 cross join department1;
select*from department1;
select*from stud;
select stud.name,stud.marks,course.courseno from stud inner join course on stud.courseno =course.courseno; 
select faculty2.facno,faculty2.facname,department1.deptno,department1.deptname from faculty2 cross join department1;
