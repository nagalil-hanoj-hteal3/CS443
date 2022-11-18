SELECT DISTINCT description
FROM products
WHERE length(description) > 6 AND length(description) < 10;
