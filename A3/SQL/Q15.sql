--15)	Write an insert statement to add Your Name as Empl_Num 772.  Use the date the insert is done for the hire date (sysdate). Sales is zero.  
--Recreate the orders table after doing the insert

INSERT INTO salesreps (empl_num, name, hire_date, sales)
VALUES (772, 'EJ Lilagan', 'sysdate', 0);
