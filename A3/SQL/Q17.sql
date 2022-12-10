--17)	Lower the price of the products by 10% if they are higher the average price 
--Recreate the products table after doing the update

UPDATE PRODUCTS
SET PRICE = (0.9 * PRICE)
WHERE PRODUCTS.PRICE > 
    (Select avg(price)
     from products); --avg(price)
