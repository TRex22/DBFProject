SELECT Emp_Num, Emp_Lname, Emp_Email, Emp_Title, Dept_Name
FROM LGEMPLOYEE, LGDEPARTMENT
WHERE Emp_Title like '%ASSOCIATE'
--WHERE substring(word, -1) = 'o'
ORDER BY Dept_Name AND Emp_Title;
