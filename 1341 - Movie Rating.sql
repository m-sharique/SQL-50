# Write your MySQL query statement below
SELECT * 
FROM (
    SELECT title AS results
    FROM movies
    JOIN movieRating
    USING(movie_id)
    WHERE created_at >= '2020-02-01' AND created_at <= '2020-02-29'
    GROUP BY title
    ORDER BY AVG(rating) DESC, title ASC
    LIMIT 1
) AS t1
UNION ALL
SELECT *
FROM (
    SELECT name AS results
    FROM users
    JOIN movierating
    USING(user_id)
    GROUP BY name
    ORDER BY COUNT(rating) DESC, name ASC
    LIMIT 1
) AS t2