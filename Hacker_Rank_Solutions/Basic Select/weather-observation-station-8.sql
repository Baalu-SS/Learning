-- code by Baalu
select distinct city from station
where right(city,1) IN ('a','e','i','o','u') and left(city,1) IN ('a','e','i','o','u')