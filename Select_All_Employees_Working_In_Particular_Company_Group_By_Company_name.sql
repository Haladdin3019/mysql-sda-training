#First possibility
SELECT ce.name, ce.surname, ce.phone, cc.name
FROM customers_employee ce
JOIN customers_company cc USING (company_id)
WHERE surname NOT LIKE ''
GROUP BY cc.name, ce.surname
ORDER BY cc.name, ce.surname;

#Second possibility without null
SELECT ce.name, ce.surname, ce.phone, cc.name
FROM customers_employee ce
JOIN customers_company cc USING (company_id)
WHERE surname NOT LIKE ''
GROUP BY cc.name, ce.surname
ORDER BY cc.name, ce.surname;