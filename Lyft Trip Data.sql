SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;



SELECT riders.first, riders.last,
cars.model
FROM riders
CROSS JOIN cars;

SELECT *
FROM trips
LEFT JOIN riders
        ON trips.id
= riders.id;


SELECT rider_id, car_id, type
FROM trips
JOIN cars
    ON cars.id
= trips.car_id;

SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

SELECT ROUND (AVG (cost), 2)
FROM trips;


SELECT id, first, last, total_trips
FROM riders
WHERE total_trips > 500;

SELECT COUNT (*)
FROM cars
WHERE status = 'active';


SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;

