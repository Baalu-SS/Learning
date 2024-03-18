 -- code by Baalu
 -- Average-Population-of-Each-Continent
 -- Both the codes are correct but the floor function could be more relevant as they asked to round the nearest integer.
 -- select co.continent, round(avg(c.population)) from country co join city c on  c.countrycode=co.code group by co.continent
  
select co.continent, floor(avg(c.population))
from country co join city c on 
c.countrycode=co.code 
group by co.continent
