-- code by Baalu
-- Placements
-- first select the name  from students and then join with other tables. join another Packages with friend_id. Now find who is earning more salary than the other person. Finally order by friends salary

select s.name from students s
join packages p on p.id =s.id
join friends f on f.id=s.id
join packages pa on f.friend_id=pa.id
where pa.salary>p.salary
order by pa.salary;
