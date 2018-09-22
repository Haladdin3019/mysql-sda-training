SELECT DISTINCT customers_company.name, SUM( failures.payment - failures.part_cost) 
FROM failures 
INNER JOIN cars ON cars.plate_id =  failures.plate_id
INNER JOIN customers_employee_and_cars on customers_employee_and_cars.plate_id = cars.plate_id
INNER JOIN customers_employee ON customers_employee.customers_employee_id = customers_employee_and_cars.customers_employee_id
INNER JOIN customers_company on customers_company.company_id = customers_employee.company_id
GROUP BY customers_company.name