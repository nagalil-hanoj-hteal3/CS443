--9)	Do question 8, still using the subquery but do not use the “all” keyword.

SELECT customers.CUST_NUM, salesreps.empl_num, customers.CREDIT_LIMIT
FROM customers, salesreps
WHERE customers.CUST_REP = salesreps.empl_num AND customers.CREDIT_LIMIT >
        (SELECT MAX(customers.CREDIT_LIMIT)
         FROM customers
         WHERE customers.CUST_REP = 109);
