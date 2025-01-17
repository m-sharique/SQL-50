/* Write your T-SQL query statement below */
SELECT name FROM Employee WHERE id IN (
    SELECT managerid FROM Employee 
    GROUP BY managerId
    HAVING COUNT(managerId) > 4
);