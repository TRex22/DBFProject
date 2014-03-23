SELECT Prod_Category, COUNT(*) AS 'Amount'
FROM LGPRODUCT
WHERE Prod_Base like 'water'
GROUP BY Prod_Category;
