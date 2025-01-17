# Write your MySQL query statement below
SELECT
    id,
    SUM(cnt) as num
    FROM (
        SELECT requester_id AS id, COUNT(requester_id) as cnt FROM RequestAccepted GROUP BY requester_id
        UNION ALL
        SELECT accepter_id AS id, COUNT(accepter_id) as cnt FROM RequestAccepted GROUP BY accepter_id
    ) AS A
GROUP BY id
ORDER BY num DESC
LIMIT 1;