SELECT res.id, properties.title, start_date, properties.cost_per_night, avg(rating) 
FROM reservations AS res
JOIN properties ON properties.id = res.property_id
JOIN property_reviews ON properties.id = res.property_id
WHERE res.guest_id = 1
GROUP by res.id, properties.id
ORDER BY start_date ASC
LIMIT 10;