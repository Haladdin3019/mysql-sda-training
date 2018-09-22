SELECT ce.name, ce.surname, c.brand, c.model
FROM customers_employee ce
INNER JOIN customers_employee_and_cars USING (customers_employee_id)
INNER JOIN cars c USING (plate_id)
GROUP BY ce.surname
ORDER BY ce.surname, c.model