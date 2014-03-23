select LGEMPLOYEE.Emp_Num, LGEMPLOYEE.Emp_Fname, LGEMPLOYEE.Emp_Lname, LGEMPLOYEE.Emp_Email, sum(LGLINE.Line_Qty) as 'Total sold' 
from LGEMPLOYEE, LGINVOICE, LGLINE, LGPRODUCT, LGBRAND 
where LGBRAND.Brand_Name like 'Coruscant Painters' and LGBRAND.Brand_ID = LGPRODUCT.Brand_ID and LGPRODUCT.Prod_SKU = LGLINE.Prod_SKU 
and LGLINE.Inv_Num = LGINVOICE.Inv_Num and LGINVOICE.Employee_ID = LGEMPLOYEE.Emp_Num and LGINVOICE.Inv_Date between '2011-11-01' and '2013-12-01' 
order by LGEMPLOYEE.Emp_Lname;