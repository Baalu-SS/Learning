-- code by Baalu
select distinct city from station
where left(city,1) IN ('a','e','i','o','u')