-- ==============================================================================
-- ASSIGNMENT 1: SQL Fundamentals (WHERE, IN, ORDER BY, LIMIT, LIKE, BETWEEN)
-- ==============================================================================

-- Question 1: 3 longest 'R' or 'NC-17' rated films
SELECT title, length 
FROM film
WHERE rating IN ('R', 'NC-17')
ORDER BY length DESC
LIMIT 3;

-- Question 2: Customers starting with 'A' and address_id between 100-200
SELECT first_name, last_name 
FROM customer
WHERE address_id BETWEEN 100 AND 200
  AND first_name LIKE 'A%'
ORDER BY last_name;

-- Question 3: Up to 5 actors with 'son' in last name and specific first names
SELECT first_name, last_name 
FROM actor
WHERE last_name ILIKE '%son%'
  AND first_name IN ('John', 'Joe', 'Jane')
LIMIT 5;

-- Question 4: Top 7 highest rental rates, ends in 's', specific cost & rating
SELECT title, rental_rate 
FROM film
WHERE title LIKE '%s'
  AND replacement_cost BETWEEN 15 AND 25
  AND rating IN ('PG', 'G')
ORDER BY rental_rate DESC
LIMIT 7;

-- Question 5: 5 most recent inactive customers from store 1 starting with M or S
SELECT first_name, last_name, create_date 
FROM customer
WHERE activebool = false
  AND store_id = 1
  AND (last_name LIKE 'M%' OR last_name LIKE 'S%')
ORDER BY create_date DESC
LIMIT 5;


