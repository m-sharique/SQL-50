/* Write your T-SQL query statement below */
SELECT CONCAT(
    CONCAT(CAST(YEAR(trans_date) AS VARCHAR), '-'),
    CASE WHEN len(CAST(MONTH(trans_date) AS VARCHAR)) < 2 
        THEN '0'+ CAST(MONTH(trans_date)AS VARCHAR)
        ELSE CAST(MONTH(trans_date)AS VARCHAR)
        END
    ) AS month,
    country,
    COUNT(id) AS trans_count,
    COUNT(CASE WHEN state = 'approved' THEN 1 ELSE NULL END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions GROUP BY MONTH(trans_date), YEAR(trans_date), country;