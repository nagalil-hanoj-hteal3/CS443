SELECT customers.CUST_NUM, customers.COMPANY, customers.CREDIT_LIMIT
FROM customers
WHERE customers.CREDIT_LIMIT < ANY 
        (SELECT ORDERS.AMOUNT 
         FROM ORDERS
         WHERE ORDERS.CUST = customers.CUST_NUM);
