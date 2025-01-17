/* Write your T-SQL query statement below */
SELECT
    p.product_id,
    (CASE WHEN 
        SUM(u.units * p.price)*1.0 / SUM(u.units)
        IS NOT NULL 
        THEN ROUND(
        SUM(u.units * p.price)*1.0 / SUM(u.units),
        2) ELSE 0 END
     ) as average_price
FROM Prices p
LEFT JOIN UnitsSold u
on p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;