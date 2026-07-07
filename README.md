# Practice Assignment Queries using dvdrental dataset 

## Concepts Used: WHERE, IN, ORDER BY, LIMIT, ILIKE, LIKE, IN, BETWEEN, AND/OR

### **Question 1:** Which query correctly retrieves the titles and lengths of the 3 longest 'R' or 'NC-17' rated films?


### **Question 2:** You need to find customers whose first name starts with 'A' and whose address_id is between 100 and 200. The results should be ordered alphabetically by their last name.


### **Question 3:** What query correctly finds up to 5 actors whose last name contains the letters 'son' (ignoring capitalization) and whose first name is either 'John', 'Jane', or 'Joe'?

### **Question 4:** Identify the query that retrieves the titles and rental rates of up to 7 films that meet ALL these conditions: the title ends with the letter 's', the replacement_cost is between 15.00 and 25.00, and the rating is either 'PG' or 'G'. The results must be shown from highest rental rate to lowest.

### **Question 5:** You need a list of 5 inactive customers (activebool = false) from store_id = 1, whose last name starts with either 'M' or 'S'. You want the most recently created accounts first (create_date).

   *TIP*: after AND use () for OR.


# **ANSWERS**

-- ==============================================================================
-- ASSIGNMENT 1: SQL Fundamentals (WHERE, IN, ORDER BY, LIMIT, LIKE, BETWEEN)
-- ==============================================================================

### Question 1: 3 longest 'R' or 'NC-17' rated films
``` sql
SELECT title, length 
FROM film
WHERE rating IN ('R', 'NC-17')
ORDER BY length DESC
LIMIT 3;
```

### Question 2: Customers starting with 'A' and address_id between 100-200
``` sql
SELECT first_name, last_name 
FROM customer
WHERE address_id BETWEEN 100 AND 200
  AND first_name LIKE 'A%'
ORDER BY last_name;
```

### Question 3: Up to 5 actors with 'son' in last name and specific first names
``` sql
SELECT first_name, last_name 
FROM actor
WHERE last_name ILIKE '%son%'
  AND first_name IN ('John', 'Joe', 'Jane')
LIMIT 5;
```

### Question 4: Top 7 highest rental rates, ends in 's', specific cost & rating
``` sql
SELECT title, rental_rate 
FROM film
WHERE title LIKE '%s'
  AND replacement_cost BETWEEN 15 AND 25
  AND rating IN ('PG', 'G')
ORDER BY rental_rate DESC
LIMIT 7;
```

### Question 5: 5 most recent inactive customers from store 1 starting with M or S
``` sql
SELECT first_name, last_name, create_date 
FROM customer
WHERE activebool = false
  AND store_id = 1
  AND (last_name LIKE 'M%' OR last_name LIKE 'S%')
ORDER BY create_date DESC
LIMIT 5;
```
