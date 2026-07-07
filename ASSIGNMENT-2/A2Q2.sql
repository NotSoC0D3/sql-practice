-- Question 2: For each rating (G, PG, R, etc.), calculate the average rental_rate, the maximum length (duration) of a movie, and the minimum replacement_cost.

SELECT rating, ROUND(AVG(rental_rate),2), MAX(length), MIN(replacement_cost)
FROM film
GROUP BY rating
