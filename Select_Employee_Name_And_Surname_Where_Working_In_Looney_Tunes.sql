SELECT ce.name, ce.surname, cc.name
FROM customers_employee ce
INNER JOIN customers_company cc USING (company_id)
WHERE cc.name = 'Looney Tunes'
ORDER BY ce.name;