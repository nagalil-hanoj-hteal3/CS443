SELECT COUNT(DISTINCT salesreps.title) AS “Diff_Title_of_Salesreps”
FROM salesreps
WHERE salesreps.title IS NOT NULL;
