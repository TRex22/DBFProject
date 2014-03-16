SELECT Emp_Num, Emp_Lname, Emp_Fname, Sal_From, Sal_End, Sal_Amount
FROM LGEMPLOYEE, LGSALARY_HISTORY
WHERE Emp_Num = 83731, Emp_Num = 83745, Emp_Num = 84039
ORDER BY Emp_Num, Sal_From;
