SELECT c.plate_id, c.brand, c.model, ce.name, ce.surname
FROM cars c
INNER JOIN customers_employee_and_cars cec USING(plate_id)
INNER JOIN customers_employee ce USING(customers_employee_id)
WHERE ce.name = 'Elroy' AND ce.surname = 'Jetson'