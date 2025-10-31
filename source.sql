DROP DATABASE IF EXISTS db2assign2;
CREATE DATABASE dbassign2;
USE dbassign2;

CREATE TABLE deptInfo (
	deptID TEXT PRIMARY KEY,
	deptDOE DATE,
	deptName TEXT
	);

CREATE TABLE employInfo(
	employID TEXT PRIMARY KEY,
	employDOB DATE,
	employHireDate DATE,
	employDept TEXT
);

CREATE TABLE studentCounselling (
	stuID TEXT PRIMARY KEY,
	stuDOA DATE,
	stuDOB DATE,
	stuDeptChoices TEXT,
	stuDeptAdmission TEXT
	);

CREATE TABLE studentPerformance (
	stuID TEXT PRIMARY KEY,
	semester TEXT,
	paperID TEXT,
	paperName TEXT,
	marks INT,
	effortHours INT
	);


LOAD DATA LOCAL INFILE '/data/Department_Information.csv' 
INTO TABLE deptInfo 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/data/Employee_Information.csv' 
INTO TABLE employInfo 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/data/Student_Counceling_Information.csv' 
INTO TABLE studentCounselling 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/data/Student_Performance_Data.csv' 
INTO TABLE studentPerformance 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

