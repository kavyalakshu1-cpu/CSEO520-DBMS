create table STUDENT2(regno int(10),S1name varchar(15),age char(2),mobileno int(10),address varchar(15));
alter table STUDENT2 ADD PRIMARY KEY(regno);
desc STUDENT2;
alter table FACULTY ADD PRIMARY KEY(Facno),ADD check (gender='M' or 'F');
desc FACULTY;
ALTER TABLE DEPARTMENT ADD PRIMARY KEY(deptno);
desc DEPARTMENT;
ALTER TABLE course ADD PRIMARY KEY(courseno),ADD check(semno>=1&&semno<=6);
alter table STUDENT2 ADD UNIQUE KEY(S1name);