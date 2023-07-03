--Creating Customer Table

CREATE TABLE Customer (
  customer_id INT,
  customer_name VARCHAR(255),
  customer_email VARCHAR(255),
  customer_address VARCHAR(255),
  customer_phone VARCHAR(255)
);

--Insertion Commands for Customer Table


-- Insert data into Customer table
INSERT INTO Customer (customer_id, customer_name, customer_email, customer_address, customer_phone)
VALUES (1, 'John Smith', 'john.smith@example.com', '123 Main St, City A', '555-1234');

INSERT INTO Customer (customer_id, customer_name, customer_email, customer_address, customer_phone)
VALUES (2, 'Jane Doe', 'jane.doe@example.com', '456 Elm St, City B', '555-5678');

INSERT INTO Customer (customer_id, customer_name, customer_email, customer_address, customer_phone)
VALUES (3, 'Michael Lee', 'michael.lee@example.com', '789 Oak St, City C', '555-9012');

INSERT INTO Customer (customer_id, customer_name, customer_email, customer_address, customer_phone)
VALUES (4, 'Sarah Brown', 'sarah.brown@example.com', '321 Pine St, City A', '555-3456');

INSERT INTO Customer (customer_id, customer_name, customer_email, customer_address, customer_phone)
VALUES (5, 'David Wang', 'david.wang@example.com', '654 Maple St, City B', '555-7890');

-- Create the Products table
CREATE TABLE Products (
  product_id INT,
  product_name VARCHAR(255),
  price_inr DECIMAL(10, 2)
);

-- Insert data into the Products table
INSERT INTO Products (product_id, product_name, price_inr)
VALUES (1, 'Product A', 1000),
       (2, 'Product B', 2500),
       (3, 'Product B', 500),
       (4, 'Product C', 800),
       (5, 'Product D', 1500);

-- Create the Orders table

CREATE TABLE Orders (
  order_id INT,
  customer_id INT,
  product_id INT,
  order_date DATE,
  quantity INT
);

-- Insert data into the Orders table
INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity)
VALUES (1, 1001, 1, '2023-05-01', 2),
       (2, 1002, 2, '2023-05-02', 1),
       (3, 1003, 3, '2023-05-03', 5),
       (4, 1004, 4, '2023-05-04', 3),
       (5, 1001, 5, '2023-05-05', 2),
       (6, 1001, 5, '2023-05-05', 2),
       (7, 1001, 5, '2023-05-05', 2);

-- Create Employee table
CREATE TABLE Employee (
  EmployeeID INT,
  EmployeeName VARCHAR(50),
  EmployeeEmail VARCHAR(50),
  Role VARCHAR(50)
);

-- Insert data into Employee table
INSERT INTO Employee (EmployeeID, EmployeeName, EmployeeEmail, Role)
VALUES (1, 'John Doe', 'john@example.com', 'Manager');

INSERT INTO Employee (EmployeeID, EmployeeName, EmployeeEmail, Role)
VALUES (2, 'Jane Smith', 'jane@example.com', 'Analyst');

INSERT INTO Employee (EmployeeID, EmployeeName, EmployeeEmail, Role)
VALUES (3, 'Michael Johnson', 'michael@example.com', 'Developer');

INSERT INTO Employee (EmployeeID, EmployeeName, EmployeeEmail, Role)
VALUES (4, 'Emily Davis', 'emily@example.com', 'Designer');

INSERT INTO Employee (EmployeeID, EmployeeName, EmployeeEmail, Role)
VALUES (5, 'David Brown', 'david@example.com', 'Engineer');




select * from Customer
select * from Orders
select * from Products
select * from Employee

