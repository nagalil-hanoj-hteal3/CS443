--7)	Use a sub-query to list the Customer number; Name and Credit Limit of any customers who have exceeded their credit limit (amount > credit limit) on any order.

SELECT customers.CUST_NUM, customers.COMPANY, customers.CREDIT_LIMIT
FROM customers
WHERE customers.CREDIT_LIMIT < ANY 
        (SELECT ORDERS.AMOUNT 
         FROM ORDERS
         WHERE ORDERS.CUST = customers.CUST_NUM);
