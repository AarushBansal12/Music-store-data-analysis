--Q1 - who is the senior most employee?
SELECT * FROM employee
ORDER BY levels desc
limit 1

--Q2 - which country has the most invoices?
SELECT COUNT(*) AS c, billing_country
FROM invoice
GROUP BY billing_country
ORDER BY c desc
limit 1

--Q3 - what are top 3 values of total invoice?
SELECT total FROM invoice
ORDER BY total desc 
limit 3

--Q4 - which city has the best customers? find city that has highest invoice totals.
SELECT SUM(total) AS total, billing_city
FROM invoice
GROUP BY billing_city
ORDER BY total desc

--Q5 - who is the best customer? find the person who has spent most money.
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) AS total
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total desc
LIMIT 1
