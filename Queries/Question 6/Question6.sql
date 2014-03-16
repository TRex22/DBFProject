SELECT Emp_Fname, Emp_Lname, Emp_Phone, Emp_Title, Dept_Num
FROM LGEMPLOYEE
WHERE Dept_Num = 300 OR Emp_Title like "CLERK1"
ORDER BY Emp_Lname AND Emp_Fname;
