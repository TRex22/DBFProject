SELECT LGBRAND.Brand_Name, COUNT(*) AS 'Amount'
FROM LGPRODUCT JOIN LGBRAND ON LGPRODUCT.Brand_ID=LGBRAND.Brand_ID
GROUP BY LGBRAND.Brand_Name
ORDER BY LGBRAND.Brand_Name;