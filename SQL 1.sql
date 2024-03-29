--1. How many actors are there with the last name ‘Wahlberg’? 2
select last_name
from actor
where last_name = 'Wahlberg'
--2. How many payments were made between $3.99 and $5.99? 123
select amount
from payment
where amount between 3.99 and 5.99
--3. What film does the store have the most of? (search in inventory) A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies
select film_id, count(store_id)
from inventory
group by film_id
order by count desc;
--4. How many customers have the last name ‘William’? 0
select last_name
from customer
where last_name = 'William'
--5. What store employee (get the id) sold the most rentals? Mike Hillyer
select staff_id, count(rental_id)
from rental
group by staff_id
--6. How many different district names are there? 378
select count(distinct district)
from address
--7. What film has the most actors in it? (use film_actor table and get film_id) A Insightful Story of a Man And a Feminist who must Fight a Composer in Australia
select film_id, count(actor_id)
from film_actor
group by film_id
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 13
select store_id, last_name
from customer
where last_name like '_%es' and store_id = 1
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250) 3
select amount , count(amount)
from payment 
where customer_id between 380 and 430
group by amount
having count(amount) > 250
--10. Within the film table, how many rating categories are there? And what rating has the most 
--movies total? 1,000/PG-13
select rating, count(rating)
from film
group by rating

