create role postgres with login superuser password 'postgres';
ALTER DATABASE orderdb OWNER TO postgres;
ALTER DATABASE order_db OWNER TO postgres;
\q
CREATE ROLE postgres WITH LOGIN SUPERUSER PASSWORD 'postgres';
CREATE ROLE
ALTER DATABASE order_db OWNER TO postgres;
\q
SELECT * FROM orders;
\q
SELECT * FROM orders;
\q
SELECT * FROM orders;
psql -U sales_clerk -d order_db -h localhost -W
\q
ALTER ROLE sales_clerk WITH PASSWORD 'NewPassword123';
\q
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q1
SELECT customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);
\q
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q1
SELECT customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);
\q
GRANT USAGE ON SCHEMA public TO sales_clerk;

GRANT SELECT ON TABLE customers, products, orders TO sales_clerk;
\q
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q1
SELECT customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q2
SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q3
SELECT customer_name
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM orders
);
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q4
SELECT
    c.customer_name,
    (
        SELECT COUNT(*)
        FROM orders o
        WHERE o.customer_id = c.customer_id
    ) AS order_count
FROM customers c;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q5
SELECT p.product_name
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.product_id = p.product_id
);
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 9, Q1
SELECT
    order_id,
    order_date,
    quantity,
    SUM(quantity) OVER (
        ORDER BY order_date, order_id
    ) AS running_total
FROM orders;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 9, Q2
SELECT
    order_id,
    quantity,
    AVG(quantity) OVER () AS average_quantity
FROM orders;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 9, Q3
SELECT
    customer_id,
    order_id,
    order_date,
    quantity,
    SUM(quantity) OVER (
        PARTITION BY customer_id
        ORDER BY order_date, order_id
    ) AS customer_running_total
FROM orders;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 9, Q4
SELECT
    category,
    product_name,
    price,
    AVG(price) OVER (
        PARTITION BY category
    ) AS category_average_price
FROM products;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 9, Q5
SELECT
    category,
    product_name,
    price,
    price - AVG(price) OVER (
        PARTITION BY category
    ) AS difference_from_category_average
FROM products;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 10, Q1
SELECT
    customer_id,
    order_id,
    order_date,
    ROW_NUMBER() OVER (
        PARTITION BY customer_id
        ORDER BY order_date, order_id
    ) AS row_number
FROM orders;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 10, Q2
SELECT
    category,
    product_name,
    price
FROM (
    SELECT
        category,
        product_name,
        price,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY price DESC
        ) AS rn
    FROM products
) ranked_products
WHERE rn = 1;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 10, Q3
SELECT
    category,
    product_name,
    price,
    RANK() OVER (
        PARTITION BY category
        ORDER BY price DESC
    ) AS price_rank
FROM products;
- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 10, Q4
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 10, Q4
SELECT
    customer_id,
    total_quantity,
    quantity_rank
FROM (
    SELECT
        customer_id,
        total_quantity,
        RANK() OVER (
            ORDER BY total_quantity DESC
        ) AS quantity_rank
    FROM (
        SELECT
            customer_id,
            SUM(quantity) AS total_quantity
        FROM orders
        GROUP BY customer_id
    ) customer_totals
) ranked_customers
WHERE quantity_rank <= 3;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 10, Q4
SELECT
    customer_id,
    total_quantity,
    quantity_rank
FROM (
    SELECT
        customer_id,
        total_quantity,
        RANK() OVER (
            ORDER BY total_quantity DESC
        ) AS quantity_rank
    FROM (
        SELECT
            customer_id,
            SUM(quantity) AS total_quantity
        FROM orders
        GROUP BY customer_id
    ) customer_totals
) ranked_customers
WHERE quantity_rank <= 3;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 10, Q5
SELECT
    product_name,
    price,
    price_rank
FROM (
    SELECT
        product_name,
        price,
        DENSE_RANK() OVER (
            ORDER BY price DESC
        ) AS price_rank
    FROM products
) ranked_products
WHERE price_rank <= 5
ORDER BY price_rank, price DESC;
\s order2_db;
