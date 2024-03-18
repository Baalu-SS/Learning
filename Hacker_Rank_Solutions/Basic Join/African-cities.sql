-- code by Baalu
-- African-cities
select c.name from city c
join country co on c.countrycode=co.code
where co.continent='Africa'
