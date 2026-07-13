SELECT *
FROM sales AS sls
LEFT JOIN stores AS strs
USING(store_key)
WHERE store_key = 0 AND 
	delivery_date IS NULL OR
	delivery_date < order_date OR
	open_date > order_date