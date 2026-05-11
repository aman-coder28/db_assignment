--@block Question 19
CREATE TABLE TEACHER (
  TEACHER_CODE VARCHAR(10) PRIMARY KEY,
  TEACHER_NAME VARCHAR(50),
  DOJ DATE
);
INSERT INTO TEACHER (TEACHER_CODE, TEACHER_NAME, DOJ)
VALUES ('T001', 'ANAND', '2001-01-30'),
  ('T002', 'AMIT', '2007-09-05'),
  ('T003', 'ANKIT', '2007-09-20'),
  ('T004', 'BALBIR', '2010-02-15'),
  ('T005', 'JASBIR', '2011-01-20'),
  ('T006', 'KULBIR', '2008-07-11');
--@block Question 31
CREATE TABLE ACCOUNT (
  ANO INT PRIMARY KEY,
  ANAME VARCHAR(50),
  ADDRESS VARCHAR(100)
);
INSERT INTO ACCOUNT (ANO, ANAME, ADDRESS)
VALUES (101, 'Nirja Singh', 'Bangalore'),
  (102, 'Rohan Gupta', 'Chennai'),
  (103, 'Ali Reza', 'Hyderabad'),
  (104, 'Rishabh Jain', 'Chennai'),
  (105, 'Simran Kaur', 'Chandigarh');
CREATE TABLE TRANSACT (
  TRNO VARCHAR(5) PRIMARY KEY,
  ANO INT,
  AMOUNT INT,
  TYPE VARCHAR(10),
  DOT DATE,
  FOREIGN KEY (ANO) REFERENCES ACCOUNT(ANO)
);
INSERT INTO TRANSACT (TRNO, ANO, AMOUNT, TYPE, DOT)
VALUES ('T001', 101, 2500, 'Withdraw', '2017-12-21'),
  ('T002', 103, 3000, 'Deposit', '2017-06-01'),
  ('T003', 102, 2000, 'Withdraw', '2017-05-12'),
  ('T004', 103, 1000, 'Deposit', '2017-10-22'),
  ('T005', 102, 12000, 'Deposit', '2017-11-06');
--@block Question 32
CREATE TABLE SALGRADE (
  SGRADE VARCHAR(5) PRIMARY KEY,
  SALARY INT,
  HRA INT
);
INSERT INTO SALGRADE (SGRADE, SALARY, HRA)
VALUES ('S01', 56000, 18000),
  ('S02', 32000, 12000),
  ('S03', 24000, 8000);
CREATE TABLE EMPLOYEE (
  EMPNO INT PRIMARY KEY,
  NAME VARCHAR(50),
  DESIG VARCHAR(50),
  SGRADE VARCHAR(5),
  DOJ DATE,
  DOB DATE,
  FOREIGN KEY (SGRADE) REFERENCES SALGRADE(SGRADE)
);
INSERT INTO EMPLOYEE (EMPNO, NAME, DESIG, SGRADE, DOJ, DOB)
VALUES (
    101,
    'Vikrant',
    'Executive',
    'S03',
    '2003-03-23',
    '1980-01-13'
  ),
  (
    102,
    'Ravi',
    'Head-IT',
    'S02',
    '2010-02-12',
    '1987-07-22'
  ),
  (
    103,
    'John Cena',
    'Receptionist',
    'S03',
    '2009-06-24',
    '1983-02-24'
  ),
  (
    105,
    'Azhar Ansari',
    'GM',
    'S02',
    '2009-08-11',
    '1984-03-03'
  ),
  (
    108,
    'Priyam Sen',
    'CEO',
    'S01',
    '2004-12-29',
    '1982-01-19'
  );
--@block Question 33
CREATE TABLE TRAINS (
  TNO INT PRIMARY KEY,
  TNAME VARCHAR(50),
  START VARCHAR(50),
END VARCHAR(50)
);
INSERT INTO TRAINS (TNO, TNAME, START,END
)
VALUES (
    11096,
    'Ahimsa Express',
    'Pune Junction',
    'Ahmedabad Junction'
  ),
  (
    12015,
    'Ajmer Shatabdi',
    'New Delhi',
    'Ajmer Junction'
  ),
  (
    1651,
    'Pune Hbj Special',
    'Pune Junction',
    'Habibganj'
  ),
  (
    13005,
    'Amritsar Mail',
    'Howrah Junction',
    'Amritsar Junction'
  ),
  (
    12002,
    'Bhopal Shatabdi',
    'New Delhi',
    'Habibganj'
  ),
  (
    12417,
    'Prayag Raj Express',
    'Allahabad Junction',
    'New Delhi'
  ),
  (
    14673,
    'Shaheed Express',
    'Jaynagar',
    'Amritsar Junction'
  ),
  (
    12314,
    'Sealdah Rajdhani',
    'New Delhi',
    'Sealdah'
  ),
  (
    12498,
    'Shane Punjab',
    'Amritsar Junction',
    'New Delhi'
  ),
  (
    12451,
    'Shram Shakti Express',
    'Kanpur Central',
    'New Delhi'
  ),
  (
    12030,
    'Swarna Shatabdi',
    'Amritsar Junction',
    'New Delhi'
  );
CREATE TABLE PASSENGERS (
  PNR VARCHAR(5) PRIMARY KEY,
  TNO INT,
  PNAME VARCHAR(50),
  GENDER VARCHAR(10),
  AGE INT,
  TRAVELDATE DATE,
  FOREIGN KEY (TNO) REFERENCES TRAINS(TNO)
);
INSERT INTO PASSENGERS (PNR, TNO, PNAME, GENDER, AGE, TRAVELDATE)
VALUES (
    'P001',
    13005,
    'R N AGRAWAL',
    'MALE',
    45,
    '2018-12-25'
  ),
  (
    'P002',
    12015,
    'P TIWARY',
    'MALE',
    28,
    '2018-11-10'
  ),
  (
    'P003',
    12015,
    'S TIWARY',
    'FEMALE',
    22,
    '2018-11-10'
  ),
  (
    'P004',
    12030,
    'S K SAXENA',
    'MALE',
    42,
    '2018-10-12'
  ),
  (
    'P005',
    12030,
    'S SAXENA',
    'FEMALE',
    35,
    '2018-10-12'
  ),
  (
    'P006',
    12030,
    'P SAXENA',
    'FEMALE',
    12,
    '2018-10-12'
  ),
  (
    'P007',
    13005,
    'N S SINGH',
    'MALE',
    52,
    '2018-05-09'
  ),
  (
    'P008',
    12030,
    'J K SHARMA',
    'MALE',
    65,
    '2018-05-09'
  ),
  (
    'P009',
    12030,
    'R SHARMA',
    'FEMALE',
    58,
    '2018-05-09'
  );
--@block Question 34
CREATE TABLE SHOPPE (
  Id VARCHAR(5) PRIMARY KEY,
  SName VARCHAR(50),
  Area VARCHAR(50)
);
INSERT INTO SHOPPE (Id, SName, Area)
VALUES ('S01', 'ABC Computronics', 'CP'),
  ('S02', 'All Infotech Media', 'GK II'),
  ('S03', 'Tech Shoppe', 'CP'),
  ('S04', 'Geeks Tecno Soft', 'Nehru Place'),
  ('S05', 'Hitech Tech Store', 'Nehru Place');
CREATE TABLE ACCESSORIES (
  No VARCHAR(5) PRIMARY KEY,
  Name VARCHAR(50),
  Price INT,
  Id VARCHAR(5),
  FOREIGN KEY (Id) REFERENCES SHOPPE(Id)
);
INSERT INTO ACCESSORIES (No, Name, Price, Id)
VALUES ('A01', 'Mother Board', 12000, 'S01'),
  ('A02', 'Hard Disk', 5000, 'S01'),
  ('A03', 'Keyboard', 500, 'S02'),
  ('A04', 'Mouse', 300, 'S01'),
  ('A05', 'Mother Board', 13000, 'S02'),
  ('A06', 'Keyboard', 400, 'S03'),
  ('A07', 'LCD', 6000, 'S04'),
  ('T08', 'LCD', 5500, 'S05'),
  ('T09', 'Mouse', 350, 'S05'),
  ('T10', 'Hard Disk', 4500, 'S03');
--@block Question  35
CREATE TABLE Vendor (
  VCode VARCHAR(5) PRIMARY KEY,
  VName VARCHAR(50)
);
INSERT INTO Vendor (VCode, VName)
VALUES ('P01', 'Rahul'),
  ('P02', 'Mukesh'),
  ('P03', 'Rohan'),
  ('P04', 'Kapil'),
  ('P05', 'Unknown');
CREATE TABLE Item (
  ICode VARCHAR(5) PRIMARY KEY,
  IName VARCHAR(50),
  Price INT,
  Color VARCHAR(20),
  VCode VARCHAR(5),
  FOREIGN KEY (VCode) REFERENCES Vendor(VCode)
);
INSERT INTO Item (ICode, IName, Price, Color, VCode)
VALUES ('S001', 'Mobile Phones', 30000, 'Silver', 'P01'),
  ('S002', 'Refrigerator', 20000, 'Cherry', 'P02'),
  ('S003', 'TV', 45000, 'Black', 'P03'),
  ('S004', 'Washing Machine', 12000, 'White', 'P04'),
  ('S005', 'Air Conditioner', 50000, 'White', 'P05');
--@block Question 36
CREATE TABLE Doctors (
  DocID INT PRIMARY KEY,
  DocName VARCHAR(50),
  Department VARCHAR(30),
  NoofOpdDays INT
);
INSERT INTO Doctors (DocID, DocName, Department, NoofOpdDays)
VALUES (101, 'J K Mishra', 'Ortho', 3),
  (102, 'Mahesh tripathi', 'ENT', 4),
  (103, 'Ravi Kumar', 'Neuro', 5),
  (104, 'Mukesh Jain', 'Physio', 3);
CREATE TABLE Patients (
  PatNo INT PRIMARY KEY,
  PatName VARCHAR(50),
  Department VARCHAR(30),
  DocId INT,
  FOREIGN KEY (DocId) REFERENCES Doctors(DocID)
);
INSERT INTO Patients (PatNo, PatName, Department, DocId)
VALUES (1, 'Payal', 'ENT', 102),
  (2, 'Naveen', 'Ortho', 101),
  (3, 'Rakesh', 'Neuro', 103),
  (4, 'Atul', 'Physio', 104);
--@block Question 37
CREATE TABLE BANK (NAME VARCHAR(50));
INSERT INTO BANK (NAME)
VALUES ('SACHIN'),
  ('RAMESH'),
  ('DINESH'),
  ('VIKAASH'),
  ('RAJU'),
  ('AMRITESH');
--@block Question 39
CREATE TABLE Visitor (
  VisitorID INT PRIMARY KEY,
  VisitorName VARCHAR(50),
  Gender CHAR(1),
  ComingFrom VARCHAR(50),
  AmountPaid INT
);
INSERT INTO Visitor (
    VisitorID,
    VisitorName,
    Gender,
    ComingFrom,
    AmountPaid
  )
VALUES (1, 'Suman', 'F', 'Kanpur', 2500),
  (2, 'Indu', 'F', 'Lucknow', 3000),
  (3, 'Rachana', 'F', 'Haryana', 2000),
  (4, 'Vikram', 'M', 'Kanpur', 4000),
  (5, 'Rajesh', 'M', 'Kanpur', 3000),
  (6, 'Suresh', 'M', 'Allahabad', 3600),
  (7, 'Dinesh', 'M', 'Lucknow', NULL),
  (8, 'Shikha', 'F', 'Varanasi', 5000);
--@block Question 47
CREATE TABLE EMPLOYEE (
  EMPNO INT PRIMARY KEY,
  ENAME VARCHAR(50),
  DEPT VARCHAR(20),
  SALARY INT,
  COMM INT
);
INSERT INTO EMPLOYEE (EMPNO, ENAME, DEPT, SALARY, COMM)
VALUES (1, 'ANKIT', 'HR', 20000, 1200),
  (2, 'SUJEET', 'ACCOUNTS', 24000, NULL),
  (3, 'VIJAY', 'HR', 28000, 2000),
  (4, 'NITIN', 'SALES', 18000, 3000),
  (5, 'VIKRAM', 'SALES', 22000, 1700);