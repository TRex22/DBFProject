select LGEMPLOYEE.Emp_Num, LGEMPLOYEE.Emp_Fname, LGEMPLOYEE.Emp_Lname, sum(LGINVOICE.Inv_Total) as 'Total Invoices' 
from LGEMPLOYEE, LGINVOICE 
where LGEMPLOYEE.Emp_Num = LGINVOICE.Employee_ID group by LGEMPLOYEE.Emp_Num 
order by LGEMPLOYEE.Emp_Fname, LGEMPLOYEE.Emp_Lname;