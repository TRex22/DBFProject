SELECT Prod_SKU, Prod_Desc, Prod_Type, Prod_Base, Prod_Category, Prod_Price
FROM LGPRODUCT
WHERE Prod_Base like 'water' AND Prod_Category like 'sealer';
