---@block Question 31 - i)
SELECT *
FROM TRANSACT
WHERE TYPE = 'Withdraw';
---@block ii)
SELECT ANO,
  AMOUNT
FROM TRANSACT
WHERE TYPE IN ('Deposit', 'Withdraw')
  AND DOT LIKE '%-05-%';
---@block iii)
SELECT ANO,
  DOT
from TRANSACT
WHERE ANO = 102;
---@block iv)
SELECT TRANSACT.ANO,
  ANAME,
  AMOUNT,
  DOT
FROM TRANSACT
  JOIN ACCOUNT ON TRANSACT.ANO = ACCOUNT.ANO
WHERE AMOUNT >= 3000;
--@block Question 32 i)
SELECT *
FROM EMPLOYEE
ORDER BY DOJ DESC;
---@block ii)
SELECT NAME,
  DESIG
FROM EMPLOYEE
WHERE SGRADE in ('S02', 'S03');
---@block iii)
SELECT NAME,
  DESIG,
  SGRADE
FROM EMPLOYEE
WHERE DOJ LIKE '2009%';
---@block iv)
SELECT SGRADE,
  SALARY * 12 as ANNUAL_SALARY
FROM SALGRADE;
---@block vi)
SELECT NAME,
  DESIG,
  DOJ,
  SALARY,
  HRA
FROM EMPLOYEE
  JOIN SALGRADE ON EMPLOYEE.SGRADE = SALGRADE.SGRADE;
---@block vii)
SELECT NAME,
  DESIG,
  SALARY,
  HRA
FROM EMPLOYEE
  JOIN SALGRADE ON EMPLOYEE.SGRADE = SALGRADE.SGRADE
WHERE SALARY <= 50000;
--@block Question 33 i)
SELECT *
FROM TRAINS
WHERE START = 'New Delhi';
---@block ii)
SELECT PNR,
  PNAME,
  GENDER,
  AGE
FROM PASSENGERS
WHERE AGE < 50;
---@block iii)
SELECT COUNT(*) AS NUMBER_OF_PASSAGERS
FROM PASSENGERS
WHERE GENDER in ('MALE', 'FEMALE');
---@block iv)
SELECT *
FROM PASSENGERS
WHERE TNO = 12015;
--@block Question 34 i)
SELECT Name,
  Price
FROM ACCESSORIES
ORDER BY Price DESC;
---@block ii)
SELECT Id,
  SName
FROM SHOPPE
WHERE Area = 'Nehru Place';
---@block iii)
SELECT Name,
  MAX(Price) as MAX_PRICE,
  MIN(Price) as MIN_PRICE
FROM ACCESSORIES;
---@block iv)
SELECT Name,
  ACCESSORIES.Id,
  Price,
  SName
FROM ACCESSORIES
  JOIN SHOPPE ON ACCESSORIES.Id = SHOPEE.Id;
---@block vi)
SELECT *
FROM ACCESSORIES
WHERE Name LIKE '%Board%';
--@block Question 35 i)
SELECT ICode,
  IName,
  VName
FROM Item
  JOIN Vendor ON Vendor.VCode = Item.VCode
WHERE Item.IName = 'Refrigerator';
---@block ii)
SELECT ICode,
  IName,
  VName
FROM Item
  JOIN Vendor ON Vendor.VCode = Item.VCode
WHERE Price >= 23000;
---@block iii)
SELECT IName,
  VName
FROM Item
  JOIN Vendor ON Vendor.VCode = Item.VCode
WHERE Item.VCode = 'P04';
--@block Question 37 i)
SELECT PatName,
  PatNo,
  DocName
FROM Patients
  JOIN Doctors ON Patients.DocId = Doctors.DocID;
---@block ii)
SELECT *
FROM Doctors
WHERE NoofOpdDays > 3;
---@block iii)
SELECT Doctors.DocID,
  Doctors.Department,
  DocName,
  PatName
FROM Doctors
  JOIN Patients ON Doctors.DocID = Patients.DocID
WHERE Doctors.DocID in (101, 103);
---@block iv)
SELECT count(Department) as NUMBER_OF_DEPARTMENTS
FROM Patients;
--@block Question 39 i)
SELECT VisitorName,
  ComingFrom
FROM Visitor
WHERE Gender = 'F'
  AND AmountPaid > 3000;
---@block ii)
SELECT DISTINCT ComingFrom
FROM Visitor;
---@block iii)
INSERT INTO Visitor
VALUES (7, 'Shilpa', 'F', 'Lucknow', 3000);
---@block iv)
SELECT *
FROM Visitor
ORDER BY AmountPaid DESC;
--@block Question 47 i)
SELECT ENAME
FROM EMPLOYEES
WHERE ENAME LIKE 'V%'
ORDER BY SALARY ASC;
---@block ii) 
SELECT *
FROM EMPLOYEED
WHERE DEPT = 'SALES'
  AND SALARY > 20000;
---@block iii) 
SELECT COUNT(DISTINCT DEPT)
FROM EMPLOYEED;
---@block iv) 
UPDATE EMPLOYEED
SET SALARY = 20000
WHERE ENAME = 'NITIN';
---@block v) 
INSERT INTO EMPLOYEES
VALUES (6, 'SUMIT', 'HR', 40000, 2000);
--@block vi)
SELECT AVG(COMM)
FROM EMPLOYEES;
--@block vii)
SELECT ENAME,
  DEPT
FROM EMPLOYEES
WHERE DEPT in ('HR', 'ACCOUNTS');
--@block viii)
SELECT ENAME,
  SALARY + 100 as NEWSAL
FROM EMPLOYEES;
--@block 49 i)
SELECT PatID,
  PatName,
  DocName
FROM Patient
  JOIN Doctor on Patient.DocID = Doctor.DocID
WHERE Specialist in ('Cardio', 'Ortho');
--@block ii)
SELECT DocName,
  PatName
FROM Patient
  JOIN Doctor on Patient.DocID = Doctor.DocID
WHERE DateAdm < '2013-10-15';
--@block 50 i)
SELECT round(55.698, 2);
--@block ii)
SELECT mid('examination', 4, 4);
--@block iii)
SELECT round(4562.778, -2);
--@block iv)
SELECT length(trim('  exam  '));