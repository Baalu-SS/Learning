-- code by Baalu
-- The-blunder
select Round(avg(salary),0)-round(avg(replace(salary,0,'')),0) from employees;

