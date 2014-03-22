SELECT Brand_Id, Brand_Name, Brand_Type, MAX(Average_Price_Of_Products) AS 'Max Average Price of Products'
FROM (
	SELECT LGBRAND.Brand_Id, LGBRAND.Brand_Name, LGBRAND.Brand_Type, AVG(LGPRODUCT.Prod_Price) AS 'Average_Price_Of_Products'
	FROM LGBRAND JOIN LGPRODUCT ON LGBRAND.Brand_Id = LGPRODUCT.Brand_Id
	GROUP BY LGBRAND.Brand_Id) Avgerages;
