--4)	What is the average sales for salesreps in office 22.

SELECT AVG(sales) AS "Avg_Sales_for_Office_22"
FROM salesreps
WHERE rep_office IN (‘22’);
