-- 1
SELECT t.*, c.country_name
FROM tourists t
    JOIN countries c
    ON t.country_id = c.id;

-- 2
SELECT *
FROM tourists
    JOIN tours
    ON tourists.tour_id = tours.id;

-- 3
SELECT *
FROM tourists
    LEFT JOIN tours
    ON tourists.tour_id = tours.id;

-- 4
SELECT *
FROM tourists
    FULL JOIN tours
    ON tourists.tour_id = tours.id;

-- 5
SELECT *
FROM tourists
    LEFT JOIN tours
    ON tourists.tour_id = tours.id
WHERE tours.id IS NULL;

-- 6
SELECT *
FROM tourists
    RIGHT JOIN tours
    ON tourists.tour_id = tours.id
WHERE tourists.tour_id IS NULL;

-- 7
SELECT COUNT(*)
FROM tourists
    RIGHT JOIN tours
    ON tourists.tour_id = tours.id
WHERE tourists.tour_id IS NULL;

-- 8
SELECT *
FROM tourists
    CROSS JOIN tours;