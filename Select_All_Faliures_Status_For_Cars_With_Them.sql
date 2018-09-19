SELECT failures.plate_id, failures.status, failures.enter_date, failures.return_date, cars.brand, cars.model, cars.prod_year
FROM failures
INNER JOIN cars ON cars.plate_id =  failures.plate_id
