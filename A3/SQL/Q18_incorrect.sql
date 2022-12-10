--Set the quota of the salesreps to (average of the quota) + 1500 if they are hired in 2021.
--Recreate the salesreps table after doing the update
--(incorrect)
update salesreps
set quota = 300000 + 1500 --set the 300000 to the avg(quota)
where hire_date LIKE '%21';
