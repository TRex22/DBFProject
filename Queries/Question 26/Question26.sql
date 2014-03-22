SELECT CONCAT(LGEMPLOYEE.Emp_Fname, ' ', LGEMPLOYEE.Emp_Lname) AS 'Manager_Name', LGDEPARTMENT.Dept_Name, LGDEPARTMENT.Dept_Phone, CONCAT(LGEMPLOYEE.Emp_Fname, ' ', LGEMPLOYEE.Emp_Lname) AS 'Emp_Name', CONCAT(LGCUSTOMER.Cust_Fname, ' ', LGCUSTOMER.Cust_Lname) AS 'Cust_Name', LGINVOICE.Inv_Date, LGINVOICE.Inv_Total
FROM LGDEPARTMENT JOIN (LGEMPLOYEE JOIN (LGINVOICE JOIN LGCUSTOMER ON LGINVOICE.Cust_Code=LGCUSTOMER.Cust_Code) ON LGEMPLOYEE.Emp_Num=LGINVOICE.Employee_ID) ON LGDEPARTMENT.Emp_Num=LGEMPLOYEE.Emp_Num
WHERE Emp_Title like 'Manager'
GROUP BY LGDEPARTMENT.Emp_Num;
