SELECT plate_id, SUM(payment - part_cost ) AS 'profit'
FROM failures 
WHERE plate_id = 'ABC 97442';