-- ============================================
-- Project: Sakila SQL Practice
-- Database: Sakila
-- Author: Shreeyash Kayastha
-- Description: Top 5 actors by number of films
-- ============================================
use sakila;
select a.actor_id, a.first_name, a.last_name, count(fa.film_id) as film_count
from actor as a join film_actor as fa
on a.actor_id= fa.actor_id
group by a.actor_id,a.first_name,a.last_name
order by film_count desc
limit 5;