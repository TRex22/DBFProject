SELECT Dept_Num, MAX(Emp_Hiredate) AS 'Max Hiredate'
FROM LGEMPLOYEE
GROUP BY Dept_Num
ORDER BY Dept_Num;
