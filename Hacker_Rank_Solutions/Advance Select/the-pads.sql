-- Code by Baalu
select concat(name,'(',substring(occupation,1,1),')') from occupations
order by name;
SELECT CONCAT('There are a total of',' ',COUNT(occupation), ' ', lower(occupation), 's.') 
FROM occupations
group by occupation
order by count(occupation)
