SELECT name, city
FROM salesreps, offices
WHERE salesreps.rep_office = offices.office AND (salesreps.sales < salesreps.quota OR offices.sales < offices.target);
