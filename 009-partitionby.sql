SELECT FirstName, LastName, Gender, Salary
,COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM EmployeeDemographics AS dem
JOIN EmployeeSalary AS sal
 ON dem.EmployeeID = sal.EmployeeID
