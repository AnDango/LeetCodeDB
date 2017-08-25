Write a SQL query to get the nth highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the nth highest salary where n = 2 is 200. 
If there is no nth highest salary, then the query should return null.

+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| 200                    |
+------------------------+

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

# 求第n最值
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      select distinct e.salary
        from Employee e
        order by e.salary desc
        limit M , 1
        #检索第N个记录，即下标为M的记录
  );
END