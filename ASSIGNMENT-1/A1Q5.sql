-- Question 5: You need a list of 5 inactive customers (activebool = false) from store_id = 1, whose last name starts with either 'M' or 'S'. You want the most recently created accounts first (create_date). 
-- Concept: WHERE, IN, LIMIT, LIKE, ORDER BY

SELECT first_name, last_name, create_date FROM customer
WHERE activebool = false
AND store_id = 1
AND (last_name LIKE 'M%' OR last_name LIKE 'S%')
ORDER BY create_date DESC
LIMIT 5



