--Display number of products within each base and type combination
SELECT DISTINCT COUNT(*) AS 'Products'
FROM LGPRODUCT
GROUP BY Prod_Base AND Prod_Type;
