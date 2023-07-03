---Write a SQL command to select customers whose name starts with "John" from the customers table using the LIKE operator.

SELECT *
FROM Customer
WHERE customer_name LIKE 'John%';

---Using the CASE statement, write a SQL query to assign a "high" label to all customer id who have made more than 3 orders, a "medium" label to those who have made 2-3 orders, and a "low" label to those who have made less than 2 orders from the orders table. The expected output should not contain any redundant/duplicate data.

SELECT DISTINCT
    customer_id,
    CASE
        WHEN COUNT(order_id) > 3 THEN 'high'
        WHEN COUNT(order_id) BETWEEN 2 AND 3 THEN 'medium'
        ELSE 'low'
    END AS label
FROM orders
GROUP BY customer_id;

---Write an SQL query to count the number of duplicate rows in the orders table.

SELECT customer_id, product_id,COUNT(*) AS duplicate_count
FROM orders
GROUP BY customer_id, product_id
HAVING COUNT(*) > 1

---Write a SQL command to select all records from the products table where the price is between 2400 and 3000.

SELECT *
FROM products
WHERE price_inr BETWEEN 2400 AND 3000;

---Using string functions, write a SQL query to convert the customer_name field in the customers table to lowercase.

SELECT LOWER(customer_name) AS customer_name_lower
FROM customer;

---Write a SQL query to find the number of days since the last purchase for each customer from the orders table using date functions.
SELECT customer_id, 
       DATEDIFF(DAY, MAX(order_date), GETDATE()) AS days_since_last_purchase
FROM Orders
GROUP BY customer_id;

---Write a query to find the top-selling product (based on quantity).
SELECT TOP 1
    p.product_id,
    p.product_name,
    SUM(o.quantity) AS total_quantity
FROM
    Products p
    JOIN Orders o ON p.product_id = o.product_id
GROUP BY
    p.product_id, p.product_name
ORDER BY
    total_quantity DESC;


---Write a query to calculate the average order value for each month from the orders table.
SELECT 
    DATEPART(MONTH, o.order_date) AS order_month,
    AVG(o.quantity * p.price_inr) AS average_order_value
FROM 
    orders o
JOIN 
    products p ON o.product_id = p.product_id
GROUP BY 
    DATEPART(MONTH, o.order_date)
ORDER BY 
    DATEPART(MONTH, o.order_date);



---Write a SQL command to alter the products table by adding a unique key constraint uk_product_name on the product_name field. Hint: Create a new table with the name products along with the unique schema name and alter that table. The table can contain the below column names: product_id INT PRIMARY KEY, product_name VARCHAR(100), category VARCHAR(50), price DECIMAL(10, 2)
-- Create a new table with the desired schema and column names

-- Create the schema
create schema itresume2e1de6b988261328afea181c4981b960;

-- Create the products table within the schema
create table itresume2e1de6b988261328afea181c4981b960.products (
    product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    price decimal(10,2)
);

-- Add the unique key constraint on the product_name column
alter table itresume2e1de6b988261328afea181c4981b960.products
add constraint uk_product_name unique (product_name);




---Write a query to calculate the total sales for each month, including months with no sales from orders. Use Math functions to get the desired output.
SELECT
    months.month,
    COALESCE(SUM(orders.quantity * products.price_inr), 0) AS total_sales
FROM
    (
        SELECT 1 AS month
        UNION SELECT 2
        UNION SELECT 3
        UNION SELECT 4
        UNION SELECT 5
        UNION SELECT 6
        UNION SELECT 7
        UNION SELECT 8
        UNION SELECT 9
        UNION SELECT 10
        UNION SELECT 11
        UNION SELECT 12
    ) AS months
LEFT JOIN
    orders ON months.month = DATEPART(MONTH, orders.order_date)
LEFT JOIN
    products ON orders.product_id = products.product_id
GROUP BY
    months.month;


---Write an SQL query to find all customers who haven't made any orders using a LEFT JOIN and WHERE clause from the customers table.
SELECT
    c.customer_name
FROM
    customer c
LEFT JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    o.order_id IS NULL;

---Retrieve the product names and their respective prices for all orders placed on '2023-05-05' from the products table. Use JOIN to get the expected output.
SELECT
    p.product_name,
    p.price_inr
FROM
    products p
JOIN
    orders o ON p.product_id = o.product_id
WHERE
    o.order_date = '2023-05-05';

---Write an SQL query that uses a window function to calculate the total sales for each month from the orders table.
SELECT DATEPART(MONTH, o.order_date) AS order_month,
       DATEPART(YEAR, o.order_date) AS order_year,
       SUM(o.quantity * p.price_inr) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY DATEPART(YEAR, o.order_date), DATEPART(MONTH, o.order_date);


---Write an SQL query that uses a window function and the RANK() function to rank customers based on the total value of their orders from the orders table.
SELECT customer_id, total_order_value, Dense_RANK() OVER (ORDER BY total_order_value DESC) AS rank
FROM (
    SELECT customer_id, SUM(price_inr * quantity) AS total_order_value
    FROM Orders
    JOIN Products ON Orders.product_id = Products.product_id
    GROUP BY customer_id
) AS order_totals;



---Write a SQL query to calculate a 3-order moving average of order value for each customer using window functions from orders table.
SELECT
    customer_id,
    order_date,
    (price_inr*quantity) as order_value_inr,
    AVG(price_inr*quantity) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_average
FROM
    Orders a 
join Products b on a.product_id = b.product_id ;



