use sakila;
select * from film;
select * from rental;
select* from inventory;
SELECT 
    fm.film_id ,
    fm.title,
    rt.rental_date ,
    rt.rental_id,
    i.store_id,
    fm.rating ,
    fm.rental_duration 
FROM
    sakila.film fm
JOIN
    inventory i ON fm.film_id = i.film_id
JOIN
    rental rt ON rt.inventory_id = i.inventory_id
;