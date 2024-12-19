USE sakila;

SELECT *
FROM film;

SELECT MAX(length) AS max_duration, MIN(length) AS min_duration
FROM film;

SELECT AVG(length), CONCAT(length DIV 60, ' hours and ', length % 60, ' minutes') AS Time_Formatted
FROM film;

SELECT length, CONCAT(length DIV 60, ' hours and ', length % 60, ' minutes') AS Time_Formatted
FROM film;

SELECT MIN(rental_date), MAX(rental_date)
FROM rental;

SELECT DATEDIFF("2006-02-14", "2005-05-24") AS Number_days_operation
FROM rental
LIMIT 1;

SELECT *
FROM rental;

SELECT DATE_FORMAT(rental_date, "%M %d, %Y") as rental_date2, month(5), day(5)
FROM rental
LIMIT 20;

SELECT title, COALESCE(rental_duration, "Not Available") AS duration
FROM film
ORDER BY title ASC;

SELECT *
FROM film;

SELECT COUNT(film_id)
FROM film;

SELECT rating, COUNT(film_id) AS films_by_rating
FROM film
GROUP BY rating;

SELECT rating, COUNT(film_id) AS films_by_rating
FROM film
GROUP BY rating
ORDER BY films_by_rating DESC;

SELECT rating, ROUND(AVG(length), 2) AS Avg_Duration
FROM film
GROUP BY rating
ORDER BY Avg_Duration DESC;

SELECT rating, ROUND(AVG(length), 2) AS Avg_Duration
FROM film
GROUP BY rating
HAVING Avg_Duration > 120
ORDER BY Avg_Duration DESC;




