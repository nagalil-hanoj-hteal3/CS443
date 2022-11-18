SELECT order_num, company, c.name AS “CUSTOMER_REP”, office, city, r.name AS “REP_ORDER”
FROM orders, customers, salesreps c, offices, salesreps r
WHERE amount > 7000.00 AND c.empl_num = cust_rep AND c.rep_office = office AND cust = cust_num AND manager != rep;
