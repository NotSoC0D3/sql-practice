-- Question 3: Write a query that correctly finds up to 5 actors whose last name contains the letters 'son' (ignoring capitalization) and whose first name is either 'John', 'Jane', or 'Joe'?
-- Concept: WHERE, IN, LIMIT, LIKE

SELECT first_name, last_name FROM actor
WHERE last_name ILIKE '%son%'
AND first_name IN ('John', 'Joe', 'Jane')
LIMIT 5



