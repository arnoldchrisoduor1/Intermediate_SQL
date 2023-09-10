SELECT Gender, COUNT(Gender) AS GenderCount
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC