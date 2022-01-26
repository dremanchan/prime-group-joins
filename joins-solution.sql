-- 1. Get all customers and their addresses

SELECT *
FROM "customers"
JOIN "addresses"
	ON "customers".id = "addresses"."customer_id";

-- 2. Get Get all orders 
-- and their line items (orders, quantity and product).

SELECT *
FROM "orders"
JOIN "line_items"
    ON "order_id" = "orders".id
JOIN "products"
    ON "products".id = "product_id";

-- 3. Which warehouses have cheetos?

SELECT 
    warehouse.warehouse,
    products.description
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id" = warehouse.id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'cheetos';

-- 4. Which warehouses have diet pepsi?

SELECT 
    warehouse.warehouse,
    products.description
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id" = warehouse.id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'diet pepsi';

-- 5. Get the number of orders for each customer. 
-- NOTE: It is OK if those without orders are not included in results.

SELECT
    count(orders.id) AS order_count,
    CONCAT (customers.first_name, ' ', customers.last_name) AS name
FROM customers
JOIN addresses ON customers.id = addresses.customer_id
JOIN orders ON orders.address_id = addresses.id
Group by name;






