-- code by Baalu
with Doctor as (
    select name, 
        row_number() over (order by name) as rn
    from occupations 
    where occupation like 'Doctor%'
),
Professor as (
    select name, 
        row_number() over (order by name) as rn
    from occupations 
    where occupation like 'Professor%'
),
Singer as (
    select name, 
        row_number() over (order by name) as rn
    from occupations 
    where occupation like 'Singer%'
),
Actor as (
    select name, 
        row_number() over (order by name) as rn
    from occupations 
    where occupation like 'Actor%'
)
select 
    d.name as Doctor,
    p.name as Professor,
    s.name as Singer,
    a.name as Actor
from Professor p 
left join Doctor d on d.rn = p.rn
left join Singer s on s.rn = p.rn
left join Actor a on a.rn = p.rn;