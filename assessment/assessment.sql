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