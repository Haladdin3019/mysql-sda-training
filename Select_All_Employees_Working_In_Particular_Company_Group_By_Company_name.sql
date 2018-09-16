#First possibility
SELECT ce.name, ce.surname, ce.phone
FROM customers_employee ce
JOIN customers_company cc USING (company_id)
ORDER BY cc.name;