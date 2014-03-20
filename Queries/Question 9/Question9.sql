SELECT LGEMPLOYEE.Emp_Num, LGEMPLOYEE.Emp_Lname, LGEMPLOYEE.Emp_Email, LGEMPLOYEE.Emp_Title, LGDEPARTMENT.Dept_Name
FROM LGEMPLOYEE INNER JOIN LGDEPARTMENT ON LGEMPLOYEE.Dept_Num=LGDEPARTMENT.Dept_Num
WHERE Emp_Title like '%Associate'
ORDER BY LGDEPARTMENT.Dept_Name, LGEMPLOYEE.Emp_Title;