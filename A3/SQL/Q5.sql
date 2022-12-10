--5)	What is the average sale amount for each sale reps in each office. Null should be ignored 

SELECT AVG(salesreps.sales) AS "Avg_Sale_Amount", salesreps.rep_office
FROM salesreps, offices
WHERE salesreps.rep_office = offices.office and salesreps.sales is not null
GROUP BY salesreps.rep_office;
