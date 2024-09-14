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
where Gender='Female'


-- How many employees are in IT department?

select count(Department) AS IT_Employees, Department
from EmployeeData
--where Department = 'IT'
GROUP BY Department 

-- How many employees have an annual salary greater than $100,000?

select count(Employee_ID)
from EmployeeData
where Annual_Salary > 100000;

SELECT *
FROM EmployeeData


-- How many employees are from China and work in the IT department?

select count (Employee_ID) AS china_IT_Employees, Country, Department
from EmployeeData
where country = 'China'
--AND Department = 'IT'
GROUP BY Country, Department
order by Country desc

select count (Employee_ID) AS china_IT_Employees, Country, Department
from EmployeeData

GROUP BY Country, Department
HAVING count (Employee_ID) > 40



-- How many employees are male and work in the engineering department?

select count(Employee_ID) AS male_Engeneering_Employees, Gender, Department
from EmployeeData
--where Gender = 'Male'
--where Department = 'Engineering'
GROUP BY Gender, Department
order by Department


-- How many employees have an exit date recorded?

select count(Exit_Date) AS Employees_with_exit_date
from EmployeeData
where Exit_Date IS NOT NULL

--GROUP BY Exit_Date


-- How many employees are from the USA and have a bonus percentage greater than 5%?

select count(Bonus) AS USA_More_than_5percentage, Country  --, Bonus
from EmployeeData
where Country ='United States'
AND Bonus > '5%'
GROUP BY Country



-- How many employees are Asians and have an age greater than 50?

select count(Ethnicity) AS Asians_age_greater_than_50, Ethnicity
from EmployeeData
where Ethnicity = 'Asian'
AND Age > 50
GROUP BY Ethnicity


-- How many employees are from the United states and work in the speciality products business unit?

select count(Employee_ID) AS USA_Speciality_products_employees, Country, Business_Unit
from EmployeeData
where Country = 'United States'
AND Business_Unit = 'Specialty Products'
GROUP BY Country, Business_Unit

SELECT *
FROM EmployeeData


-- How many employees are female and work in the Marketing department?

select count(Gender) AS Female_marketing_Employees, Department, Gender
from EmployeeData
where Gender = 'Female'
AND Department = 'Marketing'
GROUP BY Department, Gender

SELECT Department, Gender, COUNT(Gender)
FROM EmployeeData
WHERE Department = 'Marketing'
GROUP BY Department, Gender
ORDER BY Department

