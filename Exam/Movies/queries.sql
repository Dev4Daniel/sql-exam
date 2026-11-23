-- 1
SELECT genre, COUNT(*) AS movie_count
FROM movies
GROUP BY genre;

-- 2
SELECT year, SUM(revenue) AS total_revenue
FROM movies
GROUP BY year;

-- 3
SELECT genre, AVG(revenue) AS average_revenue
FROM movies
GROUP BY genre;

-- 4
SELECT genre, language, AVG(revenue) AS average_revenue
FROM movies
GROUP BY genre, language;

-- 5
SELECT language, COUNT(*) AS movie_count
FROM movies
GROUP BY language
ORDER BY movie_count
LIMIT 1;

-- 6
SELECT country, COUNT(*) AS movie_count
FROM movies
GROUP BY country
ORDER BY movie_count DESC
LIMIT 1;

-- 7
SELECT genre, COUNT(*) AS movie_count
FROM movies
GROUP BY genre
HAVING movie_count > 2;

-- 8
SELECT year, SUM(revenue) AS total_revenue
FROM movies
GROUP BY year
HAVING total_revenue > 1000;

-- 9
SELECT language, COUNT(*) AS movie_count
FROM movies
GROUP BY language
HAVING movie_count >= 3;