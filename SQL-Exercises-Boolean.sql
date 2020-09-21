 -- exercises from https://www.w3resource.com/sql-exercises/sql-boolean-operators.php#SQLEDITOR 
 -- 1.
SELECT  *
FROM customer
WHERE grade > 100; 

-- 2. 
SELECT  *
FROM customer
WHERE city = 'New York' 
AND grade > 100; 

-- 3. 
SELECT  *
FROM customer
WHERE city = 'New York' 
or grade > 100; 

-- 4. 
SELECT  *
FROM customer
WHERE city = 'New York' 
or not grade > 100; 

-- 5. 
SELECT  *
FROM customer
WHERE not (city = 'New York' 
or grade > 100); 

-- 6.  
SELECT  *
FROM orders
WHERE not (ord_date = '2012-09-10' 
AND salesman_id >= 5005) 
or purch_amt >= 1000.00; 

-- 7. 
SELECT  *
FROM salesman
WHERE commission > 0.10 
AND commission < 0.12; 

-- 8. 
SELECT  *
FROM orders
WHERE purch_amt < 200 
or not (ord_date > '2012-02-10' 
AND customer_id < 3009); 

-- 9. 
SELECT  *
FROM orders
WHERE not (ord_date = '2012-08-17' 
AND purch_amt < 1000) 
or not (customer_id > 3005 
AND purch_amt < 1000); 

-- 10. precentages
SELECT  ord_no
       ,purch_amt
       ,(purch_amt*100)/6000      AS 'achieved'
       ,(6000-purch_amt)*100/6000 AS 'unachieved'
FROM orders
WHERE (purch_amt*100)/6000 > 50; 

-- 11. 
SELECT  *
FROM emp_details
WHERE EMP_LNAME = 'Dosni' 
or EMP_LNAME = 'Mardy'; 

-- 12. 
SELECT  *
FROM emp_details
WHERE EMP_DEPT = 47 
or EMP_DEPT = 63; 
