# Analysis-of-Customer-Behavior-and-Sales-Patterns-at-Mobile-Mania
* Title :-        **Analysis-of-Customer-Behavior-and-Sales-Patterns-at-Mobile-Mania**
* Created by :-   Ajinkya Andraskar
* Date :-         03-07-2023
* Tool used:-     Microsoft SQL Server Management Studio

# Description :- 
Mobile Mania is a popular online electronics store based in India, specializing in the sale of mobile phones from various brands. With a broad customer base across the country, the company aims to leverage its sales data to gain valuable insights into customer behavior, product popularity, and sales trends. This case study focuses on analyzing data from the company's customer base, product catalog, orders, and employees.

# Dataset Description:-
The dataset used for this analysis is relatively small and consists of four main tables:

a) Customers: Contains information about the company's customers, including their name, email, address, and phone number.<br>
b) Products: Contains details about the mobile phones sold by the company, including the product name and price.<br>
c) Orders: Stores information about the orders placed by customers, including the customer ID, product ID, order date, quantity, and order value.<br>
d) Employees: Contains data about the company's employees, including their name, email, and role.<br>

# Objectives :-
The objectives of this case study are as follows:

a) Identify customer behavior: Analyze customer data to understand purchasing patterns, order frequency, and customer segmentation.<br>
b) Determine product popularity: Evaluate sales data to identify the most popular products based on quantity sold.<br>
c) Analyze sales trends: Calculate average order value and total sales for each month to identify seasonal variations and growth opportunities.<br>
d) Evaluate customer activity: Identify customers who haven't made any orders and assess their impact on business performance.<br>
e) Calculate moving averages: Utilize window functions to calculate the three-order moving average of order value for each customer.<br>


# Methodology :-
The analysis is conducted through SQL queries to extract relevant information from the database. The queries cover various aspects, including customer behavior, product popularity, sales trends, customer activity, and moving averages.

# Results and Findings :-
a) Customer Behavior Analysis:

* Identified customers whose name starts with "John" using the LIKE operator.
  Assigned labels ("high," "medium," or "low") to customers based on their order count using the CASE statement.
  
b) Product Popularity Analysis:

* Determined the top-selling product based on quantity sold.
  
c) Sales Trend Analysis:

* Calculated the average order value for each month to identify trends and seasonal variations.
  
d) Customer Activity Analysis:

* Identified customers who haven't made any orders.
  
e) Moving Averages Analysis:

* Calculated a three-order moving average of order value for each customer.
