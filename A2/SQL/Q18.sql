SELECT DISTINCT employee.empl_num, employee.name AS “EMPLOYEE_NAME”, managerr.name AS “MANAGER_NAME”
FROM customers, offices, salesreps employee, salesreps managerr
WHERE employee.manager = managerr.empl_num AND managerr.empl_num = offices.mgr AND offices.city IN (‘New York’);
