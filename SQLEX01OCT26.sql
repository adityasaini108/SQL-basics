-- 01/10/2026

-- 1. Employees earning above their department's average salary
SELECT e1.employee_id, e1.name, e1.salary, e1.department_id
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e1.department_id
);

-- 2. The most recent order details for each customer
SELECT o1.customer_id, o1.order_id, o1.order_date
FROM orders o1
WHERE o1.order_date = (
    SELECT MAX(o2.order_date)
    FROM orders o2
    WHERE o2.customer_id = o1.customer_id
);

-- 3. Employees earning the absolute maximum salary in their department
SELECT e1.employee_id, e1.name, e1.salary, e1.department_id
FROM employees e1
WHERE e1.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e1.department_id
);

-- 4. Departments that have at least one active employee (using EXISTS)
SELECT d.department_id, d.department_name
FROM departments d
WHERE EXISTS (
    SELECT 1 
    FROM employees e 
    WHERE e.department_id = d.department_id
);

-- 5. Granting a bonus to employees who earn more than their department average
UPDATE employees e1
SET bonus = 5000
WHERE salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e1.department_id
);
