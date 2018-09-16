SELECT customers_company.name, customers_employee.name, customers_employee.surname
FROM customers_company -- , customers_employee
-- WHERE customers_employee.company_id = customers_company.company_id
INNER JOIN customers_employee on customers_employee.company_id = customers_company.company_id