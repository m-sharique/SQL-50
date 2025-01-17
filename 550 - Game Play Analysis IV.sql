# Write your MySQL query statement below
SELECT
    ROUND(
        (COUNT(DISTINCT player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity)),
        2
    ) AS fraction
FROM (SELECT * FROM Activity ORDER BY player_id, event_date) AS a
WHERE (player_id, DATE_SUB(event_Date, INTERVAL 1 DAY)) IN (
    SELECT 
        player_id,
        MIN(event_date)
    FROM Activity
    GROUP BY player_id)
AND games_played > 0;