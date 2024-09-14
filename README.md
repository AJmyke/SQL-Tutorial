SELECT *
FROM EmployeeData


-- How many employee are there in the dataset?

select count (Employee_ID) AS Total_No_Employees
from EmployeeData



-- What is the avaerage age of the employees?

select AVG (Age)
from EmployeeData


-- What is the highest annual salary among the employees?

select MAX (Annual_Salary) AS Annual_Salary
from EmployeeData

SELECT *
FROM EmployeeData
WHERE Annual_Salary = 258734.00


-- How many employees are from the United States?

select count(Country) AS US_Employees, Country
from EmployeeData
--where Country='United States'
GROUP BY Country


-- What is the total annual salary expenditure for the company?

select SUM (Annual_Salary) AS total_annual_expenditure
from EmployeeData

-- How many employees have received a bonus?

select COUNT(Bonus) AS Bonus
from EmployeeData
where Bonus >= '0%';


 -- How many employees are male and how many are female employees?

 select Gender, count(Gender) AS employees
 from EmployeeData
 group by Gender

 select Gender, count(Gender) AS employees
 from EmployeeData
 WHERE Gender = 'MALE'
 group by Gender

 -- What is the average age of male employees?

select AVG(Age) AS Average_age, Gender
from EmployeeData
GROUP BY Gender



 -- What is the average age of female emloyees?

select AVG(Age) AS Average_Male_age
from EmployeeData
where Gender='Female'# SQL-Tutorial
