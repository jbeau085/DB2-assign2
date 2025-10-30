DROP DATABASE IF EXISTS db2assign2;
CREATE DATABASE dbassign2;
USE dbassign2;

CREATE TABLE deptInfo (
	id INT PRIMARY KEY,
	DOE DATE,
	deptName TEXT
	);

CREATE TABLE studentCounselling (
	id INT PRIMARY KEY,
	DOA DATE,
	DOB DATE,
	deptChoices INT,
	deptAdmission INT
	);

CREATE TABLE studentPerformance (
	infile INT PRIMARY KEY,
	semester INT,
	paperId INT,
	paperName TEXT,
	marks INT,
	effortHours INT
	);
LOAD DATA LOCAL INFILE '/data/Department_Information.csv' 
INTO TABLE deptInfo 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/data/Student_Counceling_Information.csv' 
INTO TABLE studentCounselling 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/data/Student_Performance_Data.csv' 
INTO TABLE studentPerformance 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;

