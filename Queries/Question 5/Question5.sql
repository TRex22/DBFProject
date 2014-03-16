SELECT Emp_Fname, Emp_Lname, Emp_Email
FROM LGEMPLOYEE
WHERE (Emp_Hiredate BETWEEN '2010-01-01' AND '2013-12-31')
ORDER BY Emp_Lname AND Emp_Fname;
