CREATE DATABASE orders;
USE orders;
CREATE TABLE List(
order_id INT PRIMARY KEY ,
customer_name VARCHAR (50) NOT NULL,
product_name VARCHAR (50) NOT NULL,
staff_name VARCHAR (50) NOT NULL,
);
--SHOW TABLE;
INSERT INTO List (order_id,customer_name, product_name, staff_name)
VALUES (1, 'Lynette', 'Moisturizer', 'Hilda');

INSERT INTO List (order_id, product_name, staff_name)
VALUES (2, 'Mwangi', 'Cleanser', 'Mumo');

INSERT INTO List (order_id,customer_name, product_name, staff_name)
VALUES (3, 'Lucy', 'Moisturizer', 'Hilda');

INSERT INTO List (order_id,customer_name, product_name, staff_name)
VALUES (4, 'Lure', 'Moisturizer', 'Hilda');

INSERT INTO List (order_id,customer_name, product_name, staff_name)
VALUES (5, 'Cheb', 'Moisturizer', 'Hilda');

INSERT INTO List (order_id,customer_name, product_name, staff_name)
VALUES (6, 'Ann', 'Moisturizer', 'Hilda');

SELECT * FROM List;

CREATE VIEW ProductSalesView AS
SELECT product_name, COUNT(*) AS total_quantity, COUNT(*) * unit_price AS sales_amount
FROM List
GROUP BY product_name;
