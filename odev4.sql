select distinct replacement_cost from film;

select count(distinct replacement_cost) from film;

select count(title) from film 
where title like 'T%' and rating = 'G';

select count(country = '_____') from country;

select count(city) from city 
where city ilike '%r';