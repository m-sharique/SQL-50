/* Write your T-SQL query statement below */
SELECT
    id,
    (CASE
        WHEN (
            CASE WHEN id % 2 = 0
                THEN (LAG(student) OVER (ORDER BY id))
                ELSE (LEAD(student) OVER (ORDER BY id))
                END
            ) IS NULL 
            THEN student
            ELSE (
                CASE WHEN id % 2 = 0
                THEN (LAG(student) OVER (ORDER BY id))
                ELSE (LEAD(student) OVER (ORDER BY id))
                END
            )
        END
    ) AS student
FROM Seat;