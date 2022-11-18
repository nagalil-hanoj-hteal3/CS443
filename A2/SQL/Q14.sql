SELECT e.name AS “EMPL_NAME”, m.name AS “MANAG_NAME”
FROM salesreps e, salesreps m
WHERE m.empl_num = e.manager AND e.age >= m.age;
