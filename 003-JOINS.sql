SELECT *
FROM EmployeeDemographics
	INNER Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics
	FULL OUTER Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics
	LEFT OUTER Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics
	RIGHT OUTER Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
	INNER Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/* Getting the highest paid person in the branch who is not michael*/

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
	INNER Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

/*Average salary of a salesman*/
SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM EmployeeDemographics
	INNER Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle

/*New Data*/
Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly','Flax', NULL, 'Male'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

Insert into EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)