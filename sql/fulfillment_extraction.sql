SELECT s.order_number,
	s.order_date,
	s.delivery_date,
	s.quantity,
	c.country AS customer_country,
	c.state AS customer_state,
	p.category AS product_category
FROM sales AS s
LEFT JOIN customers AS c
USING(customer_id)
LEFT JOIN products AS p
USING(product_key)
WHERE s.store_key = 0; -- Online store's store_key = 0 
