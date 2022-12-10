--6)	For each salesrep that has made an order, list the minimum, maximum and average order amount for all their orders.  Include only those orders made anytime from 2020-2021.  Omit from the list any salesrep that has only made 1 order in this time frame.  Sort the results by Empl_Num.

SELECT salesreps.empl_num, MIN(ORDERS.AMOUNT) AS "Min_Amount", MAX(ORDERS.AMOUNT) AS "Max_Amount", AVG(ORDERS.AMOUNT) AS "Avg_Amount"
FROM salesreps, ORDERS
WHERE salesreps.empl_num = ORDERS.REP AND EXTRACT(year FROM ORDERS.ORDER_DATE) BETWEEN 2020 AND 2021 --include orders made anytime from 2020-2021
GROUP BY salesreps.empl_num
HAVING COUNT(ORDERS.ORDER_NUM) > 1 -- Omit from any salesreps that made 1 order
ORDER BY salesreps.empl_num;
