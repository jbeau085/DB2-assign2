
DROP TABLE IF EXISTS deptInfo;
DROP TABLE IF EXISTS employInfo;
DROP TABLE IF EXISTS studentCounselling;
DROP TABLE IF EXISTS studentPerformance;


CREATE TABLE deptInfo (
    deptID TEXT PRIMARY KEY,
    deptName TEXT,
    deptDOE TEXT
);

CREATE TABLE employInfo (
    employID TEXT PRIMARY KEY,
    employDOB TEXT,
    employHireDate TEXT,
    employDept TEXT
);

CREATE TABLE studentCounselling (
    stuID TEXT PRIMARY KEY,
    stuDOA TEXT,
    stuDOB TEXT,
    stuDeptChoices TEXT,
    stuDeptAdmission TEXT
);

CREATE TABLE studentPerformance (
    stuID TEXT PRIMARY KEY,
    semester TEXT,
    paperID TEXT,
    paperName TEXT,
    marks INTEGER,
    effortHours INTEGER
);

-- sqlite3 db2assign2.db
-- .mode csv
-- .import './Data/Department_Information.csv' deptInfo
-- .import './Data/Employee_Information.csv' employInfo
-- .import './Data/Student_Counceling_Information.csv' studentCounselling
-- .import './Data/Student_Performance_Data.csv' studentPerformance
