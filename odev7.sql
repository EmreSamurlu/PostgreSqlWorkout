select rating from film
group by rating;

select replacement_cost rc, count(*) from film
group by rc
having count(*) > 50;

select store_id, count(*)  from customer
group by store_id;

select country_id, max(city) from city
group by country_id order by COUNT(*) desc
limit 1;