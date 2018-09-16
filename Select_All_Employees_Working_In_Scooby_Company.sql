#First possibility
SELECT ce.name, ce.surname, ce.phone
FROM customers_employee ce
JOIN customers_company cc USING (company_id)
WHERE cc.name = 'Scooby Company';

#Second possibility
SELECT name, surname, phone
FROM customers_employee
WHERE company_id IN (SELECT * FROM customers_company WHERE name = 'Scooby Company');