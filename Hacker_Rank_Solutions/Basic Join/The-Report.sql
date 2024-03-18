-- code by Baalu
-- The Report
-- Start with a condition, if grade less than 8 then null else we can print the name

select if (g.grade<8 ,null,s.name),g.grade,s.marks
from students s
join grades g on s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name asc;

