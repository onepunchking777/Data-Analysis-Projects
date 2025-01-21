CREATE VIEW customer_purchases
AS
SELECT id_order_delivery, order_purchase_timestamp, customer_id, customer_city, customer_state
FROM Dimension_OrderDelivery
WHERE (customer_state = 'SP') AND (order_purchase_timestamp BETWEEN '2017-01-01' AND '2017-05-01')
ORDER BY order_purchase_timestamp ASC;

SELECT id_order_delivery, order_purchase_timestamp, customer_id, customer_city, customer_state
FROM customer_purchases;

