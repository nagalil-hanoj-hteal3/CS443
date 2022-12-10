--Set the quota of the salesreps to (average of the quota) + 1500 if they are hired in 2021.
--Recreate the salesreps table after doing the update
--(correct)
UPDATE salesreps
SET quota = 1500 +
            (SELECT AVG(quota)
            FROM salesreps)
WHERE hire_date LIKE '%21';
