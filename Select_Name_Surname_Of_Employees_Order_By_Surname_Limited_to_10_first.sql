#1st possibility
SELECT name, surname 
FROM customers_employee
ORDER BY surname
LIMIT 10;

#2nd possibility, without nulls
SELECT name, surname 
FROM customers_employee
WHERE surname NOT LIKE ''
ORDER BY surname
LIMIT 10;