SELECT customers_employee.name, customers_employee.surname, cars.brand, cars.model
FROM cars
INNER JOIN customers_employee_and_cars ON customers_employee_and_cars.plate_id = cars.plate_id
INNER JOIN customers_employee ON customers_employee.customers_employee_id = customers_employee_and_cars.customers_employee_id
WHERE cars.plate_id LIKE "ABC_56432"