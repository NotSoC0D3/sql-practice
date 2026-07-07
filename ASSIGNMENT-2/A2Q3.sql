-- Question 3: Identify the customer_id of every patron who has spent a total of strictly more than $100 across all their transactions.

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount)
