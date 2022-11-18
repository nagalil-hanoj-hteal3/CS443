SELECT empl_num, name, hire_date
FROM salesreps
WHERE (sales > quota) AND name LIKE ‘%Mary Jones’ OR name LIKE ‘%Sam Clark’;
