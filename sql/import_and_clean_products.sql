INSERT INTO products (
    product_key, product_name, brand, color, unit_cost, unit_price, subcategory_key, subcategory, category_key, category
)
SELECT 
    product_key,
    product_name,
    brand,
    color,
    CAST(REPLACE(REPLACE(unit_cost, '$', ''), ',','') AS NUMERIC(10, 2)),  -- Strips '$' and ',' then converts to decimal
    CAST(REPLACE(REPLACE(unit_price, '$', ''), ',','')AS NUMERIC(10, 2)),  -- Strips '$' and ',' then converts to decimal
    subcategory_key,
    subcategory,
    category_key,
    category
FROM products_staging;

DROP TABLE products_staging;