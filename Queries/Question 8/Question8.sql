SELECT DISTINCT Cust_Fname, Cust_Lname, Cust_Street, Cust_City, Cust_Province, Cust_Zip
FROM LGCUSTOMER, LGBRAND, LGINVOICE
WHERE Brand_Name like 'Tatooine Dust' AND Prod_Type like 'Top Coat' AND (INV_Date BETWEEN '2011-07-15' AND '2013-07-31')
ORDER BY Cust_State, Cust_Lname, Cust_Fname;
