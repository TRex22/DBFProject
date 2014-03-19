SELECT DISTINCT Prod_Category, (COUNT(Prod_SKU))
FROM LGPRODUCT
WHERE Prod_Base like 'water';
