Write a SQL query to find all numbers that appear at least three times consecutively.

+----+-----+
| Id | Num |
+----+-----+
| 1  |  1  |
| 2  |  1  |
| 3  |  1  |
| 4  |  2  |
| 5  |  1  |
| 6  |  2  |
| 7  |  2  |
+----+-----+
For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.

+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+

# Write your MySQL query statement below
select distinct L1.Num as ConsecutiveNums
from Logs L1, Logs L2, Logs L3
where L1.Id = L2.Id + 1
and L2.Id = L3.Id + 1
and L1.Num = L2.Num
and L2.Num = L3.Num;
