SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales AS s
INNER JOIN (
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
) AS min_year ON s.product_id = min_year.product_id AND s.year = min_year.first_year
ORDER BY s.product_id;