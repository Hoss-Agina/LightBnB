SELECT city, count(reservations.*) AS total_reservations FROM properties
JOIN reservations ON property_id = properties.id
GROUP by city
ORDER BY count(reservations.*) DESC;