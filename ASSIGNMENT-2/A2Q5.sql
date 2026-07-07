-- Question 5: Find the rating categories where the average rental_duration is greater than 5 days. For those specific qualifying ratings, display the rating itself and the total count of films in that category.

SELECT rating, COUNT(title)
FROM film
GROUP BY rating
HAVING ROUND(AVG(rental_duration), 2) > 5
ORDER BY COUNT(title)
