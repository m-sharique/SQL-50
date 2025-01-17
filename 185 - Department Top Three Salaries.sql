# Write your MySQL query statement below
SELECT
    d.name AS Department,
    E.name AS Employee,
    E.Salary AS Salary
FROM (
    SELECT
        name, departmentId, salary,
        DENSE_RANK() OVER(partition by departmentid ORDER BY salary desc) as rk
    FROM Employee
) as E
JOIN Department d
ON E.departmentId = d.id
WHERE rk < 4;