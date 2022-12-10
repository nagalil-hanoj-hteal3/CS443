-- 11)	Use sub query to find the id and the name of every sales rep that represents at least one customer with a credit limit of greater than $50,000.

SELECT salesreps.empl_num, salesreps.name
FROM salesreps
WHERE salesreps.empl_num IN 
        (SELECT customers.CUST_REP
         FROM customers
         WHERE customers.CREDIT_LIMIT > 50000.00);
