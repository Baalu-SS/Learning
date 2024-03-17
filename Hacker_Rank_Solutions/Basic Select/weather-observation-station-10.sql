-- code by Baalu
select distinct city from station
where right(city,1) NOT IN ('a','e','i','o','u')