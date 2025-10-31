DROP DATABASE IF EXISTS db2assign2;
CREATE DATABASE db2assign2;
USE db2assign2;

CREATE TABLE deptInfo (
	deptID VARCHAR(10) PRIMARY KEY,
	deptName VARCHAR(255),
	deptDOE VARCHAR(20)
	);

CREATE TABLE employInfo(
	employID VARCHAR(9) PRIMARY KEY,
	employDOB VARCHAR(20),
	employHireDate VARCHAR(20),
	employDept VARCHAR(9)
);

CREATE TABLE studentCounselling (
	stuID VARCHAR(12) PRIMARY KEY,
	stuDOA VARCHAR(20),
	stuDOB VARCHAR(20),
	stuDeptChoices VARCHAR(10),
	stuDeptAdmission VARCHAR(10)
	);

CREATE TABLE studentPerformance (
	stuID VARCHAR(12) PRIMARY KEY,
	semester VARCHAR(255),
	paperID VARCHAR(255),
	paperName VARCHAR(255),
	marks INT,
	effortHours INT
	);


LOAD DATA LOCAL INFILE './data/Department_Information.csv' 
INTO TABLE deptInfo 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE './data/Employee_Information.csv' 
INTO TABLE employInfo 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE './data/Student_Counceling_Information.csv' 
INTO TABLE studentCounselling 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE './data/Student_Performance_Data.csv' 
INTO TABLE studentPerformance 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

