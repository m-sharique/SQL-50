# Write your MySQL query statement below
SELECT CAST(
    ROUND(
        AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1.00 ELSE 0 END),
        4
    ) * 100.00 AS DECIMAL(10,2)) as immediate_percentage
FROM DELIVERY
WHERE (customer_id, order_date) IN (
    SELECT 
        customer_id,
        MIN(order_date)
    FROM DELIVERY
    GROUP BY customer_id
);