-- code by Baalu
-- asian-population
select sum(c.population) from city c
join country co on c.countrycode=co.code
where co.continent='ASIA'
