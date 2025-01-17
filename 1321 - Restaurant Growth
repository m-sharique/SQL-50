# Write your MySQL query statement below
SELECT
    c1.visited_on,
    (
        SELECT SUM(Amount) FROM Customer c2 WHERE c2.visited_on BETWEEN DATE_SUB( c1.visited_on, INTERVAL 6 DAY) AND c1.visited_on
        ) as amount,
    (SELECT ROUND(SUM(Amount)/count(DISTINCT c2.visited_on),2) FROM Customer c2 WHERE c2.visited_on BETWEEN DATE_SUB( c1.visited_on, INTERVAL 6 DAY) AND c1.visited_on) as average_amount
FROM Customer c1
WHERE c1.visited_on >= (SELECT MIN(visited_on) FROM customer) + 6
GROUP BY c1.visited_on;