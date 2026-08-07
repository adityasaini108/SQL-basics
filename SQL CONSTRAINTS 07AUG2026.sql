-- 07/08/2026 Saturday

drop database if exists foreigndb;
create database foreigndb;

use foreigndb;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO customers VALUES
(101,'John'),
(102,'Alice'),
(103,'David');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO products VALUES
(1,'Laptop'),
(2,'Mouse'),
(3,'Keyboard');



CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT, -- FOREIGN KEY
    product_id INT,
    quantity INT,
    CONSTRAINT CUSTOMER_ID_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (CUSTOMER_ID) ON DELETE CASCADE,
    CONSTRAINT PRODUCT_ID_FK FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS (PRODUCT_ID)
);

INSERT INTO orders
VALUES
(1,101,1,2);

INSERT INTO CUSTOMERS VALUES(108,'RAJA');

INSERT INTO orders
VALUES
(1002,108,2,5);



-- we do join. [Wrong name]
SELECT *
FROM orders o
LEFT JOIN customers c
ON o.customer_id=c.customer_id;

-- PRODUCT_ID IS 7
INSERT INTO orders
VALUES
(1003,101,7,2);

-- wrong can't order if the product is not listed
SELECT *
FROM orders o
LEFT JOIN products p
ON o.product_id=p.product_id;





-- ----------- $$$$$$$$ ------

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

select * from products;
select * from orders;
select * from customers;


-- DML (DELETE)
DELETE FROM CUSTOMERS WHERE CUSTOMER_ID=101; -- PARENT RECORD DELETE
-- CHILD RECORD DELETE HO JEYEGA (ORDERS TABLE)

/* SYNTAX OF FOREIGN KEY
create table child_table (
	column1 data_type,
    column2 data_type,
    ...
    CONSTRAINT fk_name FOREIGN KEY (COLUMN NAME) REFERENCES CUSTOMERS (CUSTOMER_ID)
    );

*/





