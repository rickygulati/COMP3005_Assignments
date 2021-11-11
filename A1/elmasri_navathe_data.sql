PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS dept_locations;
DROP TABLE IF EXISTS works_on;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS dependent;

CREATE TABLE employee (
fname text NOT NULL,
minit text DEFAULT NULL,
lname text NOT NULL,
ssn integer PRIMARY KEY NOT NULL,
bdate text NOT NULL,
address text NOT NULL,
sex text DEFAULT NULL,
salary integer NOT NULL,
superssn integer DEFAULT NULL,
dno integer
);

CREATE TABLE department (
dname text NOT NULL,
dnumber integer PRIMARY KEY NOT NULL,
mgrssn integer NOT NULL,
mgrstartdate text NOT NULL
);

CREATE TABLE dept_locations (
dnumber integer NOT NULL,
dlocation text NOT NULL,
PRIMARY KEY (dnumber, dlocation)
);

CREATE TABLE works_on (
essn integer NOT NULL,
pno integer NOT NULL,
hours decimal DEFAULT NULL,
PRIMARY KEY (essn, pno)
);

CREATE TABLE project (
pname text NOT NULL,
pnumber integer PRIMARY KEY NOT NULL,
plocation text NOT NULL,
dnum integer NOT NULL
);

CREATE TABLE dependent (
essn integer,
dpendent_name text NOT NULL,
sex text DEFAULT NULL,
bdate text NOT NULL,
relationship text NOT NULL,
PRIMARY KEY (essn, dpendent_name)
);

INSERT INTO employee VALUES('John','B','Smith',123456789,'9-Jan-55','731 Fondern','M',30000,333445555,5);
INSERT INTO employee VALUES('Franklin','T','Wong',333445555,'8-Dec-55','638 Voss','M',40000,888665555,5);
INSERT INTO employee VALUES('Alicia','J','Zelaya',999887777,'19-Jul-58','3321 Castle','F',25000,987987987,4);
INSERT INTO employee VALUES('Jennifer','S','Wallace',987654321,'20-Jun-31','291 Berry','F',43000,888665555,4);
INSERT INTO employee VALUES('Ramesh','K','Narayan',666884444,'15-Sep-52','975 Fire Oak','M',38000,333445555,5);
INSERT INTO employee VALUES('Joyce','A','English',453453453,'31-Jul-62','5631 Rice','F',25000,333445555,5);
INSERT INTO employee VALUES('Ahmad','V','Jabber',987987987,'29-Mar-69','980 Dallas','M',25000,987654321,4);
INSERT INTO employee VALUES('James','E','Borg',888665555,'10-Nov-27','450 Stone','M',55000,NULL,1);

INSERT INTO department VALUES('Research', 5, 333445555, '22-May-78');
INSERT INTO department VALUES('Administration', 4, 987654321, '1-Jan-85');
INSERT INTO department VALUES('Headquarters', 1, 888665555, '19-Jun-71');

INSERT INTO dept_locations VALUES(1, 'Houston');
INSERT INTO dept_locations VALUES(4, 'Stafford');
INSERT INTO dept_locations VALUES(5, 'Bellaire');
INSERT INTO dept_locations VALUES(5, 'Sugarland');
INSERT INTO dept_locations VALUES(5, 'Houston');

INSERT INTO works_on VALUES(123456789, 1, 32.50);
INSERT INTO works_on VALUES(123456789, 2, 7.50);
INSERT INTO works_on VALUES(666884444, 3, 40.00);
INSERT INTO works_on VALUES(453453453, 1, 20.00);
INSERT INTO works_on VALUES(453453453, 2, 20.00);
INSERT INTO works_on VALUES(333445555, 2, 10.00);
INSERT INTO works_on VALUES(333445555, 3, 10.00);
INSERT INTO works_on VALUES(333445555, 10, 10.00);
INSERT INTO works_on VALUES(333445555, 20, 10.00);
INSERT INTO works_on VALUES(999887777, 30, 30.00);
INSERT INTO works_on VALUES(999887777, 10, 10.00);
INSERT INTO works_on VALUES(987987987, 10, 35.00);
INSERT INTO works_on VALUES(987987987, 30, 5.00);
INSERT INTO works_on VALUES(987654321, 30, 20.00);
INSERT INTO works_on VALUES(987654321, 20, 15.00);
INSERT INTO works_on VALUES(888665555, 20, NULL);

INSERT INTO project VALUES('ProductX', 1, 'Bellaire', 5);
INSERT INTO project VALUES('ProductY', 2, 'Sugarland', 5);
INSERT INTO project VALUES('ProductZ', 3, 'Houston', 5);
INSERT INTO project VALUES('Computerization', 10, 'Staffort', 4);
INSERT INTO project VALUES('Reorgranization', 20, 'Houston', 1);
INSERT INTO project VALUES('NewBenefits', 30, 'Stafford', 4);

INSERT INTO dependent VALUES(333445555, 'Alice', 'F', '5-Apr-76', 'DAUGHTER');
INSERT INTO dependent VALUES(333445555, 'Theodore', 'M', '25-Oct-73', 'SON');
INSERT INTO dependent VALUES(333445555, 'Joy', 'F', '3-May-48', 'SPOUSE');
INSERT INTO dependent VALUES(987654321, 'Abner', 'M', '29-Feb-32', 'SPOUSE');
INSERT INTO dependent VALUES(123456789, 'Michael', 'M', '1-Jan-78', 'SON');
INSERT INTO dependent VALUES(123456789, 'Alice', 'F', '31-Jan-78', 'DAUGHTER');
INSERT INTO dependent VALUES(123456789, 'Elizabeth', 'F', '5-May-57', 'SPOUSE');

COMMIT;
