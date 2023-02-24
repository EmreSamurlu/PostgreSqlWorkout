select count(length) from film
where length > any
(
	select avg(length) from film
);

select count(rental_rate) from film
where rental_rate = (
	select max(rental_rate) from film
);

select * from film
where rental_rate = (select min(rental_rate) from film)
	and replacement_cost = (select min(replacement_cost) from film);

select customer_id from payment
  group by customer_id
  order by count(customer_id) desc;