-- Question 1: Write a query to find the total amount processed by each staff_id. Order the results to show the highest-grossing staff member first.

SELECT staff_id, SUM(amount)
FROM payment
GROUP BY staff_id
ORDER BY SUM(amount) DESC