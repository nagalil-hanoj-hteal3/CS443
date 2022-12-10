--8)	Use a subquery and using the “all” keyword to find the customer number, Salesrep id, and CreditLimit of every customer whose CreditLimit is larger than the CreditLimit of all of the customers of sales rep number 109. 

SELECT customers.CUST_NUM, salesreps.empl_num, customers.CREDIT_LIMIT
FROM customers, salesreps
WHERE customers.CUST_REP = salesreps.empl_num AND customers.CREDIT_LIMIT > ALL
        (SELECT customers.CREDIT_LIMIT
         FROM customers
         WHERE customers.CUST_REP = 109);
