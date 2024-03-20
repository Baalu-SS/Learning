-- code by Baalu
-- Symmetric-Pairs

select distinct A.x,A.y from
(select *, row_number() over (order by X) as "RN" from functions) A
join (select *, row_number() over (order by X) as "RN" from functions) B
on A.x=B.y and B.x=A.y and A.RN!=B.RN and A.x<=A.y
order by A.x