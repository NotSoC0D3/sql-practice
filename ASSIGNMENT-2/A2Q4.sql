-- Question 4: Break down the total amount spent by each customer_id, but separate the totals based on the staff_id who processed the payment. (Your output should have three columns: customer_id, staff_id, and the total amount spent with that specific staff member).

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id
