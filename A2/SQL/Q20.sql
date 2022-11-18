SELECT DISTINCT employee.name AS “EMPLOYEE_NAME”, managerr.name AS “MANAGER_NAME”
FROM salesreps employee, salesreps managerr, orders
WHERE employee.manager = managerr.empl_num AND rep = managerr.empl_num;
