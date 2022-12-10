--19)	Increase customers credit limit by 25% for all customers that have 3 or more orders in which each order is more than 500.
--Recreate the customers table after doing this update

UPDATE customers
SET customers.CREDIT_LIMIT = (1.25 * customers.CREDIT_LIMIT)
WHERE 3 <= 
		(SELECT COUNT(ORDERS.CUST)
		 FROM ORDERS
		 WHERE ORDERS.CUST = customers.CUST_NUM AND AMOUNT > 500);
