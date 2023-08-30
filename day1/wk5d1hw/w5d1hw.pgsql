--1
SELECT COUNT(actor_id) FROM actor WHERE last_name = 'Wahlberg';

--2
SELECT COUNT(payment_id) FROM payment WHERE amount BETWEEN 3.99 AND 5.99;


--3 ?!? WTH??
SELECT film_id, COUNT(film_id) 
FROM inventory  GROUP BY film_id 
HAVING COUNT (film_id)=(SELECT MAX(maxfilms) FROM ( 
SELECT film_id, COUNT(film_id) maxfilms 
FROM inventory 
GROUP BY film_id)as filmid); ---WTF I feel like there's an easier way to do this.
                                --what am I missing here??


--4
SELECT COUNT(customer_id) FROM customer WHERE last_name = 'William';

--5
SELECT staff_id, COUNT(rental_id) FROM rental GROUP BY staff_id LIMIT 1;

--6
SELECT COUNT(DISTINCT district) FROM address;

--7
SELECT film_id, COUNT(actor_id) FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC LIMIT 1;

--8
SELECT COUNT(customer_id) FROM customer WHERE last_name LIKE '%es' AND store_id = 1;

--9
SELECT amount, COUNT(amount) FROM payment 
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;

--10
SELECT rating, COUNT(rating) FROM film
GROUP BY rating
ORDER BY COUNT DESC;