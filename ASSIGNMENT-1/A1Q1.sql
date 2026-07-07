-- Question 1: Which query correctly retrieves the titles and lengths of the 3 longest 'R' or 'NC-17' rated films?
-- Concept: WHERE, IN, ORDER BY, LIMIT

SELECT title, length FROM film
WHERE rating IN ('R', 'NC-17')
ORDER BY length DESC
LIMIT 3


