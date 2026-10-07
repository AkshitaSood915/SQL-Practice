SELECT mode, COUNT(customer)
FROM payment
GROUP BY mode;