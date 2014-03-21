SELECT LGPRODUCT.Brand_ID, LGBRAND.Brand_Name, ROUND(AVG(LGPRODUCT.Prod_Price), 2) AS 'Average'
FROM LGBRAND JOIN LGPRODUCT ON LGBRAND.Brand_ID=LGPRODUCT.Brand_ID
GROUP BY LGPRODUCT.Brand_ID
ORDER BY LGBRAND.Brand_Name;