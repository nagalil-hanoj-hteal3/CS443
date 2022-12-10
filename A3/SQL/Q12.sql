--12)	Use sub query and keyword “exists” to list the id and the name of the salesreps in which some customers have orders some products in their hiredate.

SELECT salesreps.empl_num, salesreps.name
FROM salesreps
WHERE EXISTS
        (SELECT ORDERS.REP
         FROM ORDERS
         WHERE salesreps.hire_date = ORDERS.ORDER_DATE);
