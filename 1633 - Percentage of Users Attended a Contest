/* Write your T-SQL query statement below */
SELECT contest_id, ROUND(
    (COUNT(r.user_id)*1.0/(SELECT COUNT(DISTINCT user_id) FROM Users))*100, 2) AS percentage
FROM Users u
JOIN Register r
ON u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;