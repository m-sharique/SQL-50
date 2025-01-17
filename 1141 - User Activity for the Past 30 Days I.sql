# Write your MySQL query statement below
SELECT
    activity_date as day,
    COUNT(DISTINCT user_id) as active_users
FROM Activity 
WHERE activity_date BETWEEN CAST('2019-06-28' AS DATE)
AND CAST('2019-07-27' AS DATE)
GROUP BY activity_date;