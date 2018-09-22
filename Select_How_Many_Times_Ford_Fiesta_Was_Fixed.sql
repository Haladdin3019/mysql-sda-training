SELECT 'Ford Festiva' AS 'car', COUNT(f.plate_id) AS 'how_many_times_was_fixed'
FROM failures f
JOIN cars c USING (plate_id)
WHERE c.brand = 'Ford' 
AND c.model = 'Festiva'
AND f.status = 'DONE';