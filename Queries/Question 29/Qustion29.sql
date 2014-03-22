#with this query the earliest Sal_From date is automatically selected.
SELECT Emp_Num, Sal_Amount
FROM LGSALARY_HISTORY
GROUP BY Emp_Num
HAVING MIN(Sal_From)
ORDER BY Emp_Num;
