--16)	Use subquery to Delete all orders for employees 'Dan Roberts'.
--Recreate the orders table after doing the delete

DELETE FROM ORDERS
WHERE ORDERS.REP = 101;
