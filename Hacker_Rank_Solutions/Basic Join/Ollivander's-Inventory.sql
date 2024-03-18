-- code by Baalu
-- Ollivander's-Inventory
-- First find the min(coin_needed) from wands and then join with other tables. Later, filter where is_evil is 0

select id,age,m.coins_needed,m.power from
(
select code, power, min(coins_needed) as coins_needed from wands 
    group by code, power
) as m
join wands w on 
m.code=w.code and 
m.power =w.power and 
m.coins_needed = w.coins_needed
join wands_property wd on
wd.code=m.code
where wd.is_evil=0 
order by m.power desc, age desc;

