# Write your MySQL query statement below
SELECT w1.id as Id 
FROM Weather AS w1
JOIN Weather AS w2
ON w1.recordDate = Date_Add(w2.recordDate, INTERVAL 1 DAY) 
WHERE w1.temperature > w2.temperature;