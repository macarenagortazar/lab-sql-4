use sakila;

#Instructions

#Get film ratings.
select rating from sakila.film;

#Get release years.
select release_year from sakila.film;

#Get all films with ARMAGEDDON in the title.
select*from sakila.film
where title regexp "armageddon";

#Get all films with APOLLO in the title
select*from sakila.film
where title regexp "apollo";

#Get all films which title ends with APOLLO.
select*from sakila.film
where title regexp "apollo$";

#Get all films with word DATE in the title.
select*from sakila.film
where title regexp " date";

#Get 10 films with the longest title.
select title, length(title) from sakila.film
Order by length(title) desc
LIMIT 10;

#Get 10 the longest films.
select title, length from sakila.film
order by length desc
limit 10;

#How many films include Behind the Scenes content?
select title, special_features from sakila.film
where special_features regexp "behind the scenes";

#List films ordered by release year and title in alphabetical order.
select*from sakila.film
order by release_year,title;
