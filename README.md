# DBMS-Assignment-8-9-10

A beginner-friendly DBMS assignment based on **Subqueries, Correlated Subqueries & Window Functions**. This assignment focuses on practicing advanced SQL queries using the `order_db` database, including nested subqueries, correlated subqueries, running totals, partitioning, row numbering, and ranking functions.

## Assignment Overview

The assignment involves working with the `order_db` database and performing advanced SQL queries on customers, products, and orders.

The work is divided into three main parts:

1. **Assignment 8 — Subqueries**
2. **Assignment 9 — Window Functions**
3. **Assignment 10 — Ranking & Window Functions**

The assignment contains a total of **15 SQL queries**, with 5 questions in each assignment.

## Database

### order_db

The database contains the following main tables:

- **CUSTOMERS**
- **PRODUCTS**
- **ORDERS**

## Tables and Attributes

### CUSTOMERS

- `customer_id` — Primary Key
- `customer_name`
- `city`
- `country`

### PRODUCTS

- `product_id` — Primary Key
- `product_name`
- `category`
- `price`

### ORDERS

- `order_id` — Primary Key
- `customer_id` — Foreign Key
- `product_id` — Foreign Key
- `order_date`
- `quantity`

## Assignment 8 — Subqueries

This assignment focuses on using nested subqueries and correlated subqueries.

The following queries were performed:

1. List customers who have placed at least one order
2. Find products priced above the overall average product price
3. List customers who have never placed an order
4. Display each customer along with the number of orders they have placed
5. List products that have never been ordered

## Assignment 9 — Window Functions

This assignment focuses on using window functions for calculations and partitioned analysis.

The following queries were performed:

1. Calculate the running total quantity ordered by order date
2. Calculate the average quantity across all orders
3. Calculate the running total quantity ordered by each customer
4. Calculate the average product price within each category
5. Calculate the difference between each product price and its category average

## Assignment 10 — Ranking & Window Functions

This assignment focuses on row numbering, ranking, dense ranking, and partitioning.

The following queries were performed:

1. Assign a row number to each customer's orders based on order date
2. Find the single most expensive product in each category
3. Rank products by price within each category
4. Rank customers by total quantity ordered and display the top 3 ranked customers
5. Rank products overall by price with no gaps and display the top 5 distinct price ranks

## SQL Concepts Used

The assignment covers the following SQL concepts:

- SELECT
- WHERE
- Subqueries
- Correlated Subqueries
- Aggregate Functions
- SUM()
- AVG()
- COUNT()
- Window Functions
- OVER()
- PARTITION BY
- ORDER BY
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Running Totals
- Ranking
- Nested Queries

## Screenshots

Screenshots were taken for all 15 SQL queries along with their respective outputs.

### Assignment 8 — Subqueries

- `Customers_Who_Placed_Orders.png`
- `Products_Above_Average_Price.png`
- `Customers_Never_Placed_Order.png`
- `Customer_Order_Count.png`
- `Products_Never_Ordered.png`

### Assignment 9 — Window Functions

- `Running_Total_Quantity.png`
- `Average_Quantity_All_Orders.png`
- `Customer_Running_Total_Quantity.png`
- `Category_Average_Product_Price.png`
- `Difference_From_Category_Average.png`

### Assignment 10 — Ranking & Window Functions

- `Customer_Order_Row_Number.png`
- `Most_Expensive_Product_Per_Category.png`
- `Product_Price_Rank_By_Category.png`
- `Top_3_Customers_By_Total_Quantity.png`
- `Top_5_Distinct_Product_Price_Ranks.png`

## SQL File

A single SQL file contains all **15 queries**, clearly organized according to Assignment and Question.

### SQL File

`order2_db.sql`

## Tools Used

**PostgreSQL**

**psql Terminal**

## Deliverables

The final submission contains:

1. SQL file containing all 15 queries
2. Screenshots of the output for all 15 queries
3. README file
4. Required document containing the queries/results in the same order

## Learning Outcomes

Through this assignment, the following concepts are practiced:

- Writing advanced SQL queries
- Using nested subqueries
- Using correlated subqueries
- Performing calculations using SQL
- Using aggregate functions with window functions
- Calculating running totals
- Using PARTITION BY
- Assigning row numbers to records
- Ranking records using RANK()
- Ranking records without gaps using DENSE_RANK()
- Finding highest-priced products within categories
- Ranking customers based on total quantities
- Working with multiple levels of SQL queries

---

## Author

**Sanika Kangane 👩🏻‍💻**
