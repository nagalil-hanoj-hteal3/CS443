SELECT ORDER_NUM, s.name AS “REP_NAME”, company, cust.name AS “CUST_REP”
FROM ORDERS, salesreps s, customers, salesreps cust --assign variables respective to the salesreps and customer
WHERE rep = s.empl_num AND cust_num = cust AND cust_rep = cust.empl_num AND amount < 700.00;
