CREATE DATABASE COMPUTING;

USE COMPUTING;

CREATE TABLE PATIENT(PNO VARCHAR(10) PRIMARY KEY, Pname VARCHAR(50), DOB DATE, Gender CHAR(1), Charges INT, Designation VARCHAR(50));

INSERT INTO PATIENT(PNO, Pname, DOB, Gender, charges, Designation) 
VALUES
('P001', 'Peter', '2000-02-12', 'M', 28000, 'Clerk'),
('P002', 'Mary', '2022-03-30', 'F', 40000, 'Student'),
('P003', 'Solomon', '1998-05-14', 'M', 30000, 'Clerk'),
('P004', 'Hannah', '2021-01-01', 'F', 50000, 'Manager'),
('P006', 'John', '2019-08-10', 'M', 25000, 'Student'),
('P007', 'Janice', '1998-06-18', 'F', 32000, 'Manager');

use computing;

CREATE VIEW viewA as SELECT*from patient where designation = 'clerk' ;

create view viewB as select*from patient where pname like 'j%';

CREATE VIEW viewc as SELECT count(*) from patient where gender ='m';

CREATE view viewd as  select * from patient where pno = 'p006' and pno ='p007';

create view viewE as select*from patient where 30000>=charges<=50000;

create VIEW viewF as select*from patient WHERE Charges
    SUM(Charges) as Total_charges
    MIN(charges) as Least_paid AND
    count(*) where gender = 'M';

create view viewG as select*from patient where charges*'1.15';

create view viewH as select*from patient where in Pname;

CREATE VIEW viewJ as SELECT pname from patient ORDER BY 'DESC';

alter table patient add COLUMN Telno int;

insert INTO patient (pno, pname, Gender) VALUES('P008', 'James', 'M');

