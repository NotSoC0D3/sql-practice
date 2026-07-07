-- Question 4: Identify the query that retrieves the titles and rental rates of up to 7 films that meet ALL these conditions: the title ends with the letter 's', the replacement_cost is between 15.00 and 25.00, and the rating is either 'PG' or 'G'. The results must be shown from highest rental rate to lowest.
-- Concept: WHERE, IN, LIMIT, LIKE, ORDER BY

SELECT title, rental_rate FROM film
WHERE title LIKE '%s'
AND replacement_cost BETWEEN 15 AND 25
AND rating IN ('PG', 'G')
ORDER BY rental_rate DESC
LIMIT 7



