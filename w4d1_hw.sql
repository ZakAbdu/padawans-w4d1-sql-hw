-- 1.) How many actors are there with the last name 'Wahlberg'?
SELECT count(*) FROM actor
WHERE last_name = 'Wahlberg';
--     ANSWER : 2


-- 2.) How many payments were made between $3.99 and $5.99?
SELECT count(*) FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
--     ANSWER: 0


-- 3.) What film does the store have the most of?(search in inventory)
SELECT film_id, COUNT(*) AS copies
FROM inventory
GROUP BY film_id
ORDER BY copies DESC
LIMIT 1
--      Multiple films with max 8 copies but got film_id = 350 
SELECT * FROM film
WHERE film_id = 350
--      ANSWER: Garden Island. film_id = 350. 8 copies


-- 4.) How many customers have the last name 'William'?
SELECT count(*) FROM customers
WHERE last_name = 'William'
--     ANSWER: 0


-- 5.) What store employee(get id) sold the most rentals?
SELECT staff_id, COUNT(*) AS most_rentals 
FROM rental
GROUP BY staff_id
--     ANSWER: Mike Hillyer, staff_id = 1


-- 6.) How many different district names are there?
SELECT COUNT(DISTINCT district) FROM address
--     ANSWER: 378 differnt unique disctrict names


-- 7.) What film has the most actors in it?(use film_actor table and get film_id)
SELECT film_id, COUNT(*) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1
--     ANSWER: film_id = 508, Lambs Cincinatti. Actor count: 15


--  8.) From store_id 1, how many customers have a last name ending with 'es'?(use customer table)
SELECT COUNT(*) AS customer_count
FROM customer
WHERE store_id = 1 and last_name LIKE '%es'
--     ANSWER: 13

-- 9.) How many payment amounts ($4.99, $5.99, etc.) had a number of rentals above 250 for customers
--     with id's between 380 and 430(use group by and having > 250)


-- 10.) Within the film table, how many rating categories are there? And what rating has the most
--      movies total?
SELECT rating, COUNT(*) AS rating_count
FROM film
GROUP BY rating
ORDER BY rating_count DESC
--     ANSWER: There are 5 rating categories and the PG-13 category has the most movies with 224 total





