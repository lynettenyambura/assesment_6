SELECT * FROM Sales.customers;
SELECT orders.order_id, customers.customername, staff.staffname
FROM sales.customers
JOIN customers ON orders.customer_id = customers.customer_id
JOIN staff ON orders.staff_id = staff.staff_id;
