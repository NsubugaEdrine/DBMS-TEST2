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
