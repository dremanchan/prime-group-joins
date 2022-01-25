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

SELECT *
FROM "warehouse"
JOIN "warehouse_product"
    ON "warehouse_id" = "warehouse".id;

