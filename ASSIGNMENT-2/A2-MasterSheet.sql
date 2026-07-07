-- ============================================================================
-- ASSIGNMENT 2: AGGREGATIONS AND GROUP BY
-- Database: dvdrental
-- Focus: Aggregate functions, GROUP BY, execution order, and HAVING filtering.
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Question 1: The Revenue Split
-- Task: Find the total amount processed by each staff_id, ordered by highest grossing.
-- ----------------------------------------------------------------------------
SELECT 
    staff_id, 
    SUM(amount) AS total_revenue
FROM 
    payment
GROUP BY 
    staff_id
ORDER BY 
    total_revenue DESC;


-- ----------------------------------------------------------------------------
-- Question 2: Inventory Analysis
-- Task: For each rating, calculate average rental rate, max length, and min replacement cost.
-- ----------------------------------------------------------------------------
SELECT 
    rating, 
    ROUND(AVG(rental_rate), 2) AS avg_rate, 
    MAX(length) AS max_duration, 
    MIN(replacement_cost) AS min_cost
FROM 
    film
GROUP BY 
    rating;


-- ----------------------------------------------------------------------------
-- Question 3: Finding the Whales
-- Task: Identify the customer_id of patrons who have spent strictly more than $100 total.
-- ----------------------------------------------------------------------------
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


-- ----------------------------------------------------------------------------
-- Question 4: Granular Grouping
-- Task: Break down total amount spent by customer_id, separated by processing staff_id.
-- ----------------------------------------------------------------------------
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


-- ----------------------------------------------------------------------------
-- Question 5: The Logic Trap
-- Task: Find rating categories where avg rental_duration > 5 days. 
--       Display only the rating and the total count of films.
-- ----------------------------------------------------------------------------
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