# Write your MySQL query statement below
SELECT
    ROUND(SUM(tiv_2016)*1.00,2) as tiv_2016
FROM Insurance
WHERE CONCAT(lat, lon) IN (
    SELECT CONCAT(lat,lon) as ll FROM Insurance
        GROUP BY CONCAT(lat,lon) HAVING COUNT(CONCAT(lat, lon)) = 1
    )
    AND
    tiv_2015 IN (
        SELECT tiv_2015 FROM Insurance
        GROUP BY tiv_2015 HAVING COUNT(tiv_2015) > 1
    );