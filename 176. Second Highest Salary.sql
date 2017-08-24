Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the query should return 200 as the second highest salary. 
If there is no second highest salary, then the query should return null.

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

# Write your MySQL query statement below

# 求最值
select max(e.Salary) 
as HighestSalary
from Employee e;

# 求第二最值
select max(e2.Salary)
as SecondHighestSalary
from Employee e2
where e2.Salary < 
(
	select max(e1.Salary)
	from Employee e1
)