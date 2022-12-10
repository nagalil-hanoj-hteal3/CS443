--10)	Use sub query and “in” keyword to print the salesreps (ids) who have taken order for the companies starts with letter ‘Z’ or with letter ‘J’. Duplicate rows are not allowed

SELECT DISTINCT salesreps.empl_num
FROM salesreps
WHERE salesreps.empl_num IN 
        (SELECT customers.cust_rep
         FROM customers
         WHERE customers.company LIKE 'Z%' OR customers.company LIKE 'J%');
