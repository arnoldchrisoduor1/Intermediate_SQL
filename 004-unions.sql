SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

SELECT EmployeeID, FirstName, Age
FROM EmployeeDemographics
UNION ALL
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
ORDER BY EmployeeID