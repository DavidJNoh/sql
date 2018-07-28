SELECT customer.first_name, city.city, customer.last_name, customer.email, address.address
FROM city
LEFT JOIN address ON address.city_id = city.city_id
LEFT JOIN customer ON customer.address_id = address.address_id
WHERE city.city_id=312

SELECT film.title, category.name, film.description, film.release_year, film.rating, film.special_features
FROM film
LEFT JOIN film_category ON film.film_id=film_category.film_id
LEFT JOIN category ON film_category.category_id=category.category_id
WHERE category.name ="comedy"

SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
LEFT JOIN film ON film_actor.film_id= film.film_id
WHERE actor_id=5;

SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM city
LEFT JOIN address ON city.city_id=address.address_id
LEFT JOIN store ON address.address_id=store.address_id
LEFT JOIN customer ON store.store_id=customer.store_id
WHERE stores_id=1 AND cities_id=1 OR cities_id=42 OR cities_id=312 OR cities_id=459;

SELECT film.title, film.description, film.release_year, film.rating, film.special_feature
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
LEFT JOIN film ON film_actor.film_id=film.film_id
WHERE film.rating = "G" AND film.special_feature="behind the scenes" AND actor.actor_id=15

SELECT film.film_id, film.title, actor.actor_id, actor.actor_name
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
LEFT JOIN film ON film_actor.film_id=film.film_id
WHERE film.film_id=369

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
LEFT JOIN film_category ON film.film_id=film_category.film_id
LEFT JOIN category ON film_category.category_id=category.category_id
WHERE category.name ="drama" AND film.rate = 2.99

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
LEFT JOIN film ON film_actor.film_id=film.film_id
LEFT JOIN film_category ON film.film_id=film_category.film_id
LEFT JOIN category ON film_category.category_id=category.category_id
WHERE actor.first_name = "SANDRA" AND actor.last_name = "KILMER" AND category.name = "action"




