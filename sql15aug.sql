

CREATE DATABASE company_db;
USE company_db;



-- Step 2: Create Tables

-- Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    manager_id INT,
    hire_year INT
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    status VARCHAR(20)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_qty INT
);

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    join_year INT
);

-- Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    budget DECIMAL(12,2),
    location VARCHAR(50),
    head_id INT
);

-- Step 3: Insert Data

-- Employees Data
INSERT INTO employees VALUES
(101, 'Alice Johnson', 'IT', 72000, NULL, 2018),
(102, 'Bob Smith', 'IT', 65000, 101, 2019),
(103, 'Carol White', 'HR', 58000, NULL, 2017),
(104, 'David Brown', 'HR', 54000, 103, 2020),
(105, 'Eva Green', 'Finance', 80000, NULL, 2016),
(106, 'Frank Black', 'Finance', 75000, 105, 2018),
(107, 'Grace Lee', 'IT', 68000, 101, 2021),
(108, 'Henry Wilson', 'Marketing', 60000, NULL, 2017),
(109, 'Ivy Turner', 'Marketing', 56000, 108, 2022),
(110, 'Jack Davis', 'Finance', 70000, 105, 2019),
(111, 'Karen Moore', 'IT', 63000, 101, 2020),
(112, 'Leo Harris', 'HR', 50000, 103, 2021),
(113, 'Mia Clark', 'Marketing', 62000, 108, 2018),
(114, 'Nate Lewis', 'Finance', 78000, 105, 2019),
(115, 'Olivia Walker', 'IT', 71000, 101, 2017),
(116, 'Paul Hall', 'HR', 53000, 103, 2020),
(117, 'Quinn Young', 'Marketing', 59000, 108, 2021),
(118, 'Rachel King', 'Finance', 82000, 105, 2016),
(119, 'Sam Scott', 'IT', 66000, 101, 2022),
(120, 'Tina Adams', 'HR', 55000, 103, 2019);

-- Orders Data
INSERT INTO orders VALUES
(1001, 201, 301, 1500, '2024-01-05', 'Delivered'),
(1002, 202, 302, 2300, '2024-01-12', 'Delivered'),
(1003, 203, 303, 800, '2024-02-03', 'Delivered'),
(1004, 201, 304, 3200, '2024-02-14', 'Delivered'),
(1005, 204, 301, 1100, '2024-03-01', 'Pending'),
(1006, 205, 302, 4500, '2024-03-15', 'Delivered'),
(1007, 202, 303, 950, '2024-03-22', 'Cancelled'),
(1008, 206, 304, 2100, '2024-04-05', 'Delivered'),
(1009, 203, 301, 1750, '2024-04-18', 'Pending'),
(1010, 207, 302, 3300, '2024-04-30', 'Delivered'),
(1011, 204, 303, 680, '2024-05-10', 'Cancelled'),
(1012, 208, 304, 2900, '2024-05-22', 'Delivered'),
(1013, 205, 301, 1200, '2024-06-08', 'Delivered'),
(1014, 201, 302, 2700, '2024-06-15', 'Pending'),
(1015, 209, 303, 500, '2024-06-28', 'Delivered'),
(1016, 206, 304, 3800, '2024-07-07', 'Delivered'),
(1017, 207, 301, 1600, '2024-07-19', 'Delivered'),
(1018, 210, 302, 4100, '2024-07-25', 'Delivered'),
(1019, 208, 303, 720, '2024-08-02', 'Cancelled'),
(1020, 209, 304, 2200, '2024-08-14', 'Delivered');

-- Products Data
INSERT INTO products VALUES
(301, 'Laptop', 'Electronics', 55000, 30),
(302, 'Smartphone', 'Electronics', 22000, 80),
(303, 'Headphones', 'Electronics', 3500, 120),
(304, 'Monitor', 'Electronics', 18000, 45),
(305, 'Keyboard', 'Accessories', 1500, 200),
(306, 'Mouse', 'Accessories', 900, 250),
(307, 'Desk Chair', 'Furniture', 8500, 40),
(308, 'Standing Desk', 'Furniture', 22000, 15),
(309, 'Webcam', 'Electronics', 4200, 70),
(310, 'USB Hub', 'Accessories', 1200, 180),
(311, 'Notebook', 'Stationery', 150, 500),
(312, 'Pen Set', 'Stationery', 250, 600),
(313, 'Printer', 'Electronics', 12000, 25),
(314, 'Scanner', 'Electronics', 9000, 20),
(315, 'External SSD', 'Electronics', 7500, 60),
(316, 'Lamp', 'Furniture', 2200, 90),
(317, 'Whiteboard', 'Office Supplies', 3800, 35),
(318, 'Cable Organiser', 'Accessories', 600, 300),
(319, 'Power Bank', 'Electronics', 2800, 100),
(320, 'Smart Watch', 'Electronics', 15000, 55);

-- Customers Data
INSERT INTO customers VALUES
(201, 'Aarav Mehta', 'Mumbai', 'India', 2021),
(202, 'Priya Sharma', 'Delhi', 'India', 2020),
(203, 'Rohan Gupta', 'Pune', 'India', 2022),
(204, 'Sunita Patel', 'Ahmedabad', 'India', 2021),
(205, 'Vikram Rao', 'Bangalore', 'India', 2019),
(206, 'Neha Singh', 'Chennai', 'India', 2023),
(207, 'Arjun Kumar', 'Hyderabad', 'India', 2020),
(208, 'Deepa Nair', 'Kochi', 'India', 2022),
(209, 'Sanjay Joshi', 'Jaipur', 'India', 2021),
(210, 'Meera Iyer', 'Coimbatore', 'India', 2023),
(211, 'Ravi Verma', 'Lucknow', 'India', 2020),
(212, 'Anita Das', 'Kolkata', 'India', 2019),
(213, 'Kiran Reddy', 'Vizag', 'India', 2022),
(214, 'Pooja Shah', 'Surat', 'India', 2021),
(215, 'Amit Bose', 'Nagpur', 'India', 2023),
(216, 'Tara Menon', 'Trivandrum', 'India', 2020),
(217, 'Nikhil Kulkarni', 'Nashik', 'India', 2022),
(218, 'Swati Chatterjee', 'Bhopal', 'India', 2019),
(219, 'Rahul Pandey', 'Patna', 'India', 2021),
(220, 'Divya Tiwari', 'Indore', 'India', 2023);


INSERT INTO departments VALUES
(1, 'IT', 500000, 'Bangalore', 101),
(2, 'HR', 200000, 'Mumbai', 103),
(3, 'Finance', 600000, 'Delhi', 105),
(4, 'Marketing', 300000, 'Chennai', 108);


select * from employees;
select * from orders;
select * from products;
select * from customers;
select * from departments;


-- 1 
select emp_name,department,salary from employees where salary > (select avg(salary) from employees) order by salary desc; 

-- 2
select emp_id,emp_name,department,salary from employees where salary =(select max(salary) from employees);

-- 3select emp
-- 4
select emp_name,department,hire_year from employees where hire_year=(select hire_year from employees where emp_name='Rachel King') and emp_name<>'Rachel King';
-- 5
-- 14
SELECT emp_name, salary 
FROM employees 
WHERE department in (select department from employees where department='finance') order by salary desc;


-- 17
select customer_id, customer_name, city from customers where customer_id IN (select customer_id
from orders group by customer_id having count(order_id)=1);

-- select customer_id,count(order_id) from orders group by customer_id;
select customer_id
from orders group by customer_id having count(order_id)=1;

-- 18
select customer_id, customer_name, city from customers where customer_id IN (select customer_id
from orders group by customer_id having count(order_id)>=2);



-- Q1
SELECT emp_name, department, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Q2
SELECT emp_id, emp_name, department, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Q3
SELECT emp_id, emp_name, department, salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

-- Q4
SELECT emp_name, department, hire_year
FROM employees
WHERE hire_year = (SELECT hire_year FROM employees WHERE emp_name='Rachel King')
AND emp_name <> 'Rachel King';

-- Q5
SELECT product_name, category, price
FROM products
WHERE price > (SELECT AVG(price) FROM products)
ORDER BY price DESC;

-- Q6
SELECT product_id, product_name, category, price
FROM products
WHERE price = (SELECT MAX(price) FROM products);

-- Q7
SELECT product_id, product_name, category, price
FROM products
WHERE price = (SELECT MIN(price) FROM products);

-- Q8
SELECT order_id, customer_id, amount
FROM orders
WHERE amount > (SELECT AVG(amount) FROM orders)
ORDER BY amount DESC;

-- Q9
SELECT order_id, customer_id, amount, order_date
FROM orders
WHERE amount = (SELECT MAX(amount) FROM orders);

-- Q10
SELECT customer_id, customer_name, city
FROM customers
WHERE customer_id IN (SELECT DISTINCT customer_id FROM orders)
ORDER BY customer_id;

-- Q11
SELECT customer_id, customer_name, city
FROM customers
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders)
ORDER BY customer_id;

-- Q12
SELECT product_id, product_name, category, price
FROM products
WHERE product_id IN (SELECT DISTINCT product_id FROM orders);

-- Q13
SELECT product_id, product_name, category, price
FROM products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM orders);

-- Q14
SELECT emp_name, salary
FROM employees
WHERE department IN (SELECT dept_name FROM departments WHERE dept_name='Finance')
ORDER BY salary DESC;

-- Q15
SELECT emp_name, department, salary
FROM employees
WHERE salary < (SELECT MIN(salary) FROM employees WHERE department='Finance')
ORDER BY salary DESC;

-- Q16
SELECT dept_name, budget, location
FROM departments
WHERE budget = (SELECT MAX(budget) FROM departments);

-- Q17
SELECT customer_id, customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(*)=1
);

-- Q18
SELECT customer_id, customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(*)>=2
)
ORDER BY customer_id;

-- Q19
SELECT product_name, category, price
FROM products
WHERE price > (SELECT MAX(price) FROM products WHERE category='Accessories')
ORDER BY price DESC;

-- Q20
SELECT order_id, customer_id, amount, order_date
FROM orders
WHERE customer_id IN (SELECT customer_id FROM customers WHERE join_year=2021)
ORDER BY order_date;

-- Q21
SELECT emp_id, emp_name, department
FROM employees e
WHERE EXISTS (SELECT 1 FROM employees WHERE manager_id=e.emp_id)
ORDER BY emp_name;

-- Q22
SELECT emp_id, emp_name, department
FROM employees e
WHERE NOT EXISTS (SELECT 1 FROM employees WHERE manager_id=e.emp_id)
ORDER BY emp_id;

-- Q23
SELECT emp_name, department, salary
FROM employees
WHERE salary > ALL (SELECT salary FROM employees WHERE department='HR');

-- Q24
SELECT emp_name, department, salary
FROM employees
WHERE salary < ANY (SELECT salary FROM employees WHERE department='IT');

-- Q25
SELECT customer_id, customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM orders WHERE amount > 2000
);

-- Q26
SELECT product_id, product_name, category, price
FROM products
WHERE product_id IN (
    SELECT product_id FROM orders WHERE status='Cancelled');

-- Q27
SELECT emp_name, department, hire_year
FROM employees
WHERE hire_year IN (
    SELECT DISTINCT hire_year FROM employees WHERE department='Finance'
);

-- Q28
SELECT dept_name, budget, location
FROM departments
WHERE head_id IN (
    SELECT emp_id FROM employees WHERE salary > 75000
);

-- Q29
SELECT customer_id, customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(*)>3);

-- Q30
SELECT product_id, product_name, category, price
FROM products
WHERE stock_qty < (SELECT AVG(stock_qty) FROM products);
