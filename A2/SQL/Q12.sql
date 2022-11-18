SELECT ORDER_NUM, salesreps.name, offices.city
FROM offices, salesreps, ORDERS
WHERE salesreps.empl_num = ORDERS.REP AND salesreps.rep_office = offices.office AND offices.city IN (‘Chicago’,’Denver’);
