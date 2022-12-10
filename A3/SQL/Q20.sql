--20)	Increase the credit limit of any customer who has any order that exceeds their credit limit.  The new credit limit should be set to their maximum order amount plus $1,000.  This must be done in 1 SQL statement.
--Recreate the customers table after doing this update

UPDATE customers
SET customers.credit_limit  = 
    ((SELECT MAX(orders.amount)
    FROM orders
    WHERE orders.cust = customers.cust_num) + 1000)
WHERE customers.credit_limit < ANY 
    (SELECT orders.amount
    FROM orders
    WHERE orders.cust = customers.cust_num);
