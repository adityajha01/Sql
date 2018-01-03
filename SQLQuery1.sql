Create Database Res_manag
Use Res_manag
drop table MANAGEMENT
 create table MANAGEMENT
 (
     mgname varchar(20), 
	 dept_no int,
	 primary key(dept_no),
	 unique(dept_no)
);
insert into MANAGEMENT values ('ISRO',1)
insert into MANAGEMENT values ('IIRS',2)
insert into MANAGEMENT values ('INS',3)
insert into MANAGEMENT values ('vikramaditya',4)
insert into MANAGEMENT values ('Abhuday',5)
insert into MANAGEMENT values ('wariors',6)
insert into MANAGEMENT values ('winners',7)
insert into MANAGEMENT values ('Invincible',8)
insert into MANAGEMENT values ('vikrant',9)
insert into MANAGEMENT values ('NASA',10)
insert into MANAGEMENT values ('Isro',11)
delete from MANAGEMENT where dept_no=2
 drop table PROGRAM_MANAGER
create table PROGRAM_MANAGER
(
   fname char(20),
   mname char(20),
   lname char(20),
   mgrssn varchar(10) , 
   age integer,
   sex char,
   Bdate date,
   salary integer,
   phone_no varchar(12),
   manager_address varchar(50),
   primary key(mgrssn),
   foreign key (mgrssn) references CONTROLLER(cssn) on delete cascade on update cascade

 );
 insert into PROGRAM_MANAGER values ('S','K','Roy','12351',85,'M','1931-02-24',200000,'9564356421','Udupi,karnataka')
 insert into PROGRAM_MANAGER values ('Rekha','s','Nayak','12361',21,'F','1995-08-12',50000,'9136325689','Bangalore,karnataka')
 
 
 
 
 insert into PROGRAM_MANAGER values('Radha','Krishna','Doodmane','123454',41,'M','1975-12-20',200000,'9945265988','Nitte,Mangalore,Karnataka',1)
 insert into PROGRAM_MANAGER values('Mahesh','K','kini','123455',45,'M','1970-10-24',150000,'9845765987','Mangalore,Karnataka',2)
 insert into PROGRAM_MANAGER values('Roshan','Fernandes','Rodregues','123456',42,'M','1974-02-10',200000,'9445265256','udupi,Karnataka',3)
 insert into PROGRAM_MANAGER values('Anisha','P','Rodregues','123457',32,'F','1984-11-01',100000,'985265987','Bangalore,Karnataka',4)
 insert into PROGRAM_MANAGER values('Keerthana','B','C','123458',31,'F','1985-06-20',100000,'9645265281','Nitte,Mangalore,Karnataka',5)
 insert into PROGRAM_MANAGER values('Sampath','k','Kini','123459',41,'M','1975-06-27',200000,'9345265962','Bangalore,Karnataka',6)
 insert into PROGRAM_MANAGER values('Joy','Elvin','Martis','123460',36,'M','1970-12-25',100000,'9952659845','Nitte,Mangalore,Karnataka',7)
 drop table CONTROLLER
 create table CONTROLLER
 (
   fname char(20),
   mname char(20),
   lname char(20),
   cssn varchar(10) , 
   age integer,
   sex char,
   Bdate date,
   salary integer,
   phone_no varchar(12),
   c_address varchar(50),
	dept_no integer,
	primary key(cssn),
	foreign key (cssn) references SCIENTIST(ssn) on delete cascade on update cascade
 );
 insert into CONTROLLER values ('Aditya','Kumar','jha','12341',41,'M','1975-10-23',250000,'9832657412','Mangalore,karnataka',1)
 insert into CONTROLLER values ('S','K','Roy','12351',85,'M','1931-02-24',200000,'9564356421','Udupi,karnataka',2)
 insert into CONTROLLER values ('Rekha','s','Nayak','12361',21,'F','1995-08-12',50000,'9136325689','Bangalore,karnataka',3)
 insert into CONTROLLER values ('payal','s','verma','12371',22,'M','1994-07-23',20000,'9836325681','udupi,karnataka',4)
 insert into CONTROLLER values('Kiran','B','C','12383',31,'F','1985-06-20',100000,'9645265281','Nitte,Mangalore,Karnataka',5)
select * from CONTROLLER
 drop table SCIENTIST
 create table SCIENTIST
 (
     fname char(10),
	 mname char(10),
	 lname char(10),
	 ssn varchar(10) primary key,
	 age integer,
	 sex char,
	 Bdate date,
	 salary integer,
	 phone_no varchar(12),
	 scientist_address varchar(50),
	 dept_no integer,
	 foreign key (dept_no) references MANAGEMENT(dept_no) on delete cascade on update cascade

 );
insert into SCIENTIST values ('APJ','Abdul','kalam','12340',80,'M','1931-11-13',200000,'9865321478','Rameshwaram,Tamilnadu',1)
insert into SCIENTIST values ('Aditya','Kumar','jha','12341',41,'M','1975-10-23',250000,'9832657412','Mangalore,karnataka',1)
insert into SCIENTIST values ('Manisha','p','Bhatt','12342',25,'F','1996-10-23',100000,'9735646532','Bangalore,karnataka',1)
insert into SCIENTIST values ('Ramesh','Kumar','Readdy','12343',45,'M','1971-10-03',100000,'9532659821','Mangalore,karnataka',1)
insert into SCIENTIST values ('Rahul','K','kini','12350',45,'M','1970-10-24',150000,'9845765987','Mangalore,Karnataka',2)
insert into SCIENTIST values ('S','K','Roy','12351',85,'M','1931-02-24',200000,'9564356421','Udupi,karnataka',2)
insert into SCIENTIST values ('pooja','s','Nayak','12352',41,'F','1976-02-23',50000,'9436325689','Mangalore,karnataka',2)
insert into SCIENTIST values ('Aishwarya','k','Nayak','12353',21,'F','1996-10-13',250000,'9736325689','Bangalore,karnataka',2)
insert into SCIENTIST values ('pooja','p','shetty','12360',31,'F','1986-10-13',20000,'9836325689','Mangalore,karnataka',3)
insert into SCIENTIST values ('Rekha','s','Nayak','12361',21,'F','1995-08-12',50000,'9136325689','Bangalore,karnataka',3)
insert into SCIENTIST values ('prajwal','B','Roy','12362',20,'M','1996-02-13',20000,'9236325682','udupi,karnataka',3)
insert into SCIENTIST values ('Rohan','elvin','Rodregues','12364',42,'M','1974-02-10',200000,'9445265256','udupi,Karnataka',3)
insert into SCIENTIST  values ('R','Mohan','Hegde','12365',52,'M','1965-08-12',100000,'9736524658','Bangalore,karnataka',3)
insert into SCIENTIST values ('Ramesh','k','Nayak','12370',21,'M','1995-10-25',50000,'9936325680','Mangalore,karnataka',4)
insert into SCIENTIST values ('payal','s','verma','12371',22,'M','1994-07-23',20000,'9836325681','udupi,karnataka',4)
insert into SCIENTIST values ('Amit','kumar','jha','12372',21,'M','1995-10-13',50000,'9236325682','Mangalore,karnataka',4)
insert into SCIENTIST values ('Maisha','P','Rodregues','12373',32,'F','1984-11-01',100000,'985265987','Bangalore,Karnataka',4)
insert into SCIENTIST values ('Manjunath','K','B','12374',45,'M','1971-06-29',50000,'9756321456','Mangalore,karnataka',4)
insert into SCIENTIST values ('Amit','kumar','jha','12380',25,'M','1991-07-26',25000,'9036325683','udupi,karnataka',5)
insert into SCIENTIST values ('Rahul','k','Nayak','12381',21,'M','1996-01-12',50000,'9936325684','Bangalore,karnataka',5)
insert into SCIENTIST values ('sarthi','kumar','roy','12382',21,'M','1997-08-03',20000,'9436325688','Mangalore,karnataka',5)
insert into SCIENTIST values('Kiran','B','C','12383',31,'F','1985-06-20',100000,'9645265281','Nitte,Mangalore,Karnataka',5)
insert into SCIENTIST  values ('Abhay','B','R','12384',52,'M','1966-05-04',50000,'9635241547','Udupi,karnataka',5)
 drop table LABORATORY
 create table LABORATORY
 (
      equipment varchar(20),
	  location char(20) ,
	  lab_id varchar(12) ,
	   dept_no integer,
	   primary key (lab_id),
	   foreign key (dept_no) references MANAGEMENT(dept_no) on delete cascade on update cascade
 );
 insert into LABORATORY values ('micile','Dehradun','ind123',1)
 insert into LABORATORY values ('computer','Dehradun','ind124',1)
 insert into LABORATORY values ('chemicals','mumbai','ind125',2)
 drop table PLANNING_GROUP
 create table PLANNING_GROUP
 (
    pgname char(20),
	total_member integer,
	pgid char(20),
	 dept_no integer,
  primary key(pgid),
  foreign key (dept_no) references MANAGEMENT(dept_no) on delete cascade on update cascade
 );
 insert into PLANNING_GROUP values ('Royal',12,'ind123455',1)
  insert into PLANNING_GROUP values ('crackers',15,'ind123456',2)
   insert into PLANNING_GROUP values ('Rezuvit',20,'ind123457',1)
drop table FACILITIES
create table FACILITIES
(
     construction_and_launch varchar(20),
	 test varchar(20),
	 research varchar(20) primary key,
	 dept_no integer,
	  foreign key (dept_no) references MANAGEMENT(dept_no) on delete cascade on update cascade
);
insert into FACILITIES values ('GSAT','micile','mars',1)
insert into FACILITIES values ('GSAT-1','micile','moon',2)
insert into FACILITIES values ('NUCL','earth','Nuclear',1)
insert into FACILITIES values ('ISAT','space','satelite',2)
insert into FACILITIES values ('ISAT-1','earth','satelite1',1)
select * 
 from PROGRAM_MANAGER
select *
from MANAGEMENT
select *
from CONTROLLER
select *
from SCIENTIST
select *
from FACILITIES
select *
from PLANNING_GROUP
select *
from CONTROLLER
select *
from SCIENTIST s,CONTROLLER c
where s.ssn=c.cssn and s.dept_no=c.dept_no 