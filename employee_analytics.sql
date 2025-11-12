-- 1️⃣ Create the table
CREATE TABLE employee_data (
  Emp_ID INT,
  Emp_Name VARCHAR(50),
  Department VARCHAR(30),
  Salary INT,
  Experience_Years FLOAT,
  City VARCHAR(30)
);

-- 2️⃣ Insert data
INSERT INTO employee_data VALUES
(1, 'Arjun', 'HR', 42000, 2.0, 'Bangalore'),
(2, 'Sneha', 'Marketing', 58000, 3.5, 'Chennai'),
(3, 'Rahul', 'Finance', 50000, 2.5, 'Bangalore'),
(4, 'Priya', 'HR', 47000, 1.8, 'Coimbatore'),
(5, 'Karthik', 'IT', 62000, 4.0, 'Hyderabad'),
(6, 'Deepa', 'Marketing', 54000, 2.2, 'Chennai');

-- 3️⃣ Department-wise average salary
SELECT Department, AVG(Salary) AS Avg_Salary
FROM employee_data
GROUP BY Department;

-- 4️⃣ Highest-paid employee
SELECT Emp_Name, Department, MAX(Salary) AS Highest_Salary
FROM employee_data
GROUP BY Department, Emp_Name
ORDER BY Highest_Salary DESC
LIMIT 1;

-- 5️⃣ Average experience by department
SELECT Department, ROUND(AVG(Experience_Years), 1) AS Avg_Experience
FROM employee_data
GROUP BY Department;

