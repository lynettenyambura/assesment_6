SELECT
    o.order_id,
    c.first_name AS customer_name,
    s.first_name AS staff_name
FROM
    sales.orders o
    JOIN sales.customers c ON o.customer_id = c.customer_id
    JOIN sales.staffs s ON o.staff_id = s.staff_id;
	
	CREATE VIEW  products_amount AS 
Select m.product_id, 
m.product_name,
SUM(o.quantity) As Quantity, 
SUM(o.quantity *o.list_price *(1-o.discount)) AS Amount FROM 
production.products m JOIN sales.order_items o on m.product_id =o.product_id
Group by 
m.product_name,
m.product_id

SELECT * FROM products;

CREATE PROCEDURE GetTotalOrdersByCustomer
    @CustomerId INT,
    @TotalOrders INT OUTPUT
AS
BEGIN
    SELECT @TotalOrders = COUNT(*) 
    FROM Orders 
    WHERE CustomerId = @CustomerId
END

DECLARE @TotalOrders INT;
EXEC GetTotalOrdersByCustomer @CustomerId = 123, @TotalOrders = @TotalOrders OUTPUT
SELECT @TotalOrders AS TotalOrders;

SELECT TOP 5
    c.customer_id,
    c.first_name AS customer_name,
    COUNT(*) AS total_orders
FROM
    sales.orders o
    JOIN sales.customers c ON o.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.first_name
ORDER BY
    total_orders DESC;

	CREATE VIEW product_sales AS
SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS total_revenue
FROM
    production.products p
    JOIN sales.order_items oi ON p.product_id = oi.product_id
GROUP BY
    p.product_id,
    p.product_name;

	SELECT *
FROM product_sales;




