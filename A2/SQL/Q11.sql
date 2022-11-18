SELECT DISTINCT MFR_ID, PRODUCT_ID, COMPANY, PRICE
FROM PRODUCTS, customers, ORDERS
WHERE product = PRODUCT_ID AND mfr = MFR_ID AND cust = CUST_NUM AND CUST_NUM IN (2111,2112,2105,2119) AND amount < 3000.00
ORDER BY COMPANY ASC;
