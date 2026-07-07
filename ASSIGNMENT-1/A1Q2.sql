-- Question 2: You need to find customers whose first name starts with 'A' and whose address_id is between 100 and 200. The results should be ordered alphabetically by their last name.
-- Concept: WHERE, IN, ORDER BY, LIMIT, LIKE

SELECT first_name, last_name FROM customer
WHERE address_id BETWEEN 100 AND 200
AND first_name LIKE 'A%'
ORDER BY last_name



