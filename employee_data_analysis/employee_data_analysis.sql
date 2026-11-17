USE demos;
/*
CREATE TABLE departments(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR (100),
    email VARCHAR(150),
    department_id INT,
    job_role VARCHAR(100),
    salary DECIMAL(10, 2),
    joining_date DATE,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);


INSERT INTO departments (department_id, department_name)
VALUES
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance'),
    (4, 'Marketing');


INSERT INTO employees (employee_id, employee_name, email, department_id, job_role, salary, joining_date)
VALUES
    (101, 'James Wilson', 'james@example.com', 1, 'Data Analyst', 55000, '2024-01-15'),
    (102, 'Emily Johnson', 'emily@example.com', 2, 'HR Executive', 42000, '2023-06-10'),
    (103, 'Michael Brown', 'michael@example.com', 3, 'Financial Analyst', 60000, '2022-09-20'),
    (104, 'Olivia Davis', 'olivia@example.com', 1, 'Software Developer', 70000, '2021-03-12'),
    (105, 'William Taylor', 'william@example.com', 4, 'Marketing Executive', 45000, '2024-05-18'),
    (106, 'Sophia Miller', 'sophia@example.com', 3, 'Accountant', 48000, '2023-11-25');


SELECT * FROM employees;

-- Display employee names and salaries
SELECT employee_name, salary
FROM employees;


-- Find employees earning more than 50,000
SELECT employee_name, salary
FROM employees
WHERE salary > 50000


-- displaying employees in descending order
SELECT employee_name, salary
FROM employees
ORDER BY salary DESC;


-- update employee slary
UPDATE employees
SET salary = 62000
WHERE employee_id = 101;
*/

-- delete an employee record
DELETE FROM employees
WHERE employee_id = 107;