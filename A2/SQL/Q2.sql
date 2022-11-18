SELECT MFR_ID, PRODUCT_ID, DESCRIPTION, (PRICE * QTY_ON_HAND) AS dollar_value
FROM PRODUCTS
WHERE (PRICE * QTY_ON_HAND) > 20000.00 --in oracle, setting dollar_value on the WHERE clause is not supported
ORDER BY dollar_value DESC; 
