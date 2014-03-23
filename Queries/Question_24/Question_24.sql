SELECT AVG(Prod_Price) AS 'Largest Average Product Price'
FROM LGPRODUCT
GROUP BY Brand_ID
ORDER BY AVG(Prod_Price) DESC
LIMIT 1;