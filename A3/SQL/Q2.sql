--2)	Determine how many orders were made in 2022.  Return the number of rows that meet this condition.

SELECT COUNT(*) AS “ORDERS FROM 2022”
FROM ORDERS
WHERE ORDERS.ORDER_DATE LIKE ‘%22’;
