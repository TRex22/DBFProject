SELECT  Prod_Base, Prod_Type, COUNT(*) AS 'Amount'
FROM LGPRODUCT
GROUP BY Prod_Base, Prod_Type;
