# 💼 Employee Salary & Department Analytics (SQL Project)

A short SQL-based project analyzing employee salary and experience data across departments.

## 🎯 Objective
To apply SQL queries for:
- Calculating average salary by department  
- Identifying highest-paid employees  
- Measuring average experience across departments  

## 🧰 Tools Used
- MySQL / SQLite  
- SQL Aggregation Functions (`AVG`, `MAX`, `GROUP BY`)  

## 📊 Key Queries
```sql
SELECT Department, AVG(Salary) AS Avg_Salary FROM employee_data GROUP BY Department;
SELECT Emp_Name, MAX(Salary) AS Highest_Salary FROM employee_data;
SELECT Department, AVG(Experience_Years) AS Avg_Experience FROM employee_data GROUP BY Department;
