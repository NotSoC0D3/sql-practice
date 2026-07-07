# 📂 ASSIGNMENT 1: SQL Fundamentals
> **Focusing on:** `WHERE` | `IN` | `ORDER BY` | `LIMIT` | `LIKE` | `BETWEEN` 


### **Question 1:** Which query correctly retrieves the titles and lengths of the 3 longest 'R' or 'NC-17' rated films?


### **Question 2:** You need to find customers whose first name starts with 'A' and whose address_id is between 100 and 200. The results should be ordered alphabetically by their last name.


### **Question 3:** What query correctly finds up to 5 actors whose last name contains the letters 'son' (ignoring capitalization) and whose first name is either 'John', 'Jane', or 'Joe'?

### **Question 4:** Identify the query that retrieves the titles and rental rates of up to 7 films that meet ALL these conditions: the title ends with the letter 's', the replacement_cost is between 15.00 and 25.00, and the rating is either 'PG' or 'G'. The results must be shown from highest rental rate to lowest.

### **Question 5:** You need a list of 5 inactive customers (activebool = false) from store_id = 1, whose last name starts with either 'M' or 'S'. You want the most recently created accounts first (create_date).

   *TIP*: after AND use () for OR.


# **ANSWERS**

### A1
``` sql
SELECT title, length 
FROM film
WHERE rating IN ('R', 'NC-17')
ORDER BY length DESC
LIMIT 3;
```

### A2
``` sql
SELECT first_name, last_name 
FROM customer
WHERE address_id BETWEEN 100 AND 200
  AND first_name LIKE 'A%'
ORDER BY last_name;
```

### A3
``` sql
SELECT first_name, last_name 
FROM actor
WHERE last_name ILIKE '%son%'
  AND first_name IN ('John', 'Joe', 'Jane')
LIMIT 5;
```

### A4
``` sql
SELECT title, rental_rate 
FROM film
WHERE title LIKE '%s'
  AND replacement_cost BETWEEN 15 AND 25
  AND rating IN ('PG', 'G')
ORDER BY rental_rate DESC
LIMIT 7;
```

### A5
``` sql
SELECT first_name, last_name, create_date 
FROM customer
WHERE activebool = false
  AND store_id = 1
  AND (last_name LIKE 'M%' OR last_name LIKE 'S%')
ORDER BY create_date DESC
LIMIT 5;
```

# 📂 ASSIGNMENT 2: SQL Fundamentals
> **Focusing on:** `AVG` | `SUM` | `MIN` | `MAX` | `HAVING` | `GROUP BY` | `AS`

### **Question 1: **  Find the total amount processed by each staff_id, ordered by highest grossing.

### **Question 2: **  For each rating, calculate average rental rate, max length, and min replacement cost.

### **Question 3: **  Identify the customer_id of patrons who have spent strictly more than $100 total.

### **Question 4: **  Break down total amount spent by customer_id, separated by processing staff_id.

### **Question 5: **  Find rating categories where avg rental_duration > 5 days. Display only the rating and the total count of films.

# **ANSWERS**

### A1
``` sql
SELECT 
    staff_id, 
    SUM(amount) AS total_revenue
FROM 
    payment
GROUP BY 
    staff_id
ORDER BY 
    total_revenue DESC;
```

### A2
``` sql
SELECT 
    rating, 
    ROUND(AVG(rental_rate), 2) AS avg_rate, 
    MAX(length) AS max_duration, 
    MIN(replacement_cost) AS min_cost
FROM 
    film
GROUP BY 
    rating;
```

### A3
``` sql
SELECT 
    customer_id, 
    SUM(amount) AS total_spent
FROM 
    payment
GROUP BY 
    customer_id
HAVING 
    SUM(amount) > 100
ORDER BY 
    total_spent;
```

### A4
``` sql
SELECT 
    customer_id, 
    staff_id, 
    SUM(amount) AS staff_specific_total
FROM 
    payment
GROUP BY 
    customer_id, 
    staff_id
ORDER BY 
    customer_id;
```

### A5
``` sql
SELECT 
    rating, 
    COUNT(title) AS total_films
FROM 
    film
GROUP BY 
    rating
HAVING 
    AVG(rental_duration) > 5
ORDER BY 
    total_films;
```


