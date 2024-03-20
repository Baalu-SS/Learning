-- Code by Baalu and Youtube Ref:
-- 15-Days-of-Learning-SQL
-- MS SQL Server


Declare @regular_hackers TABLE
(
    hacker_id int,
    submission_date Date    
);

Declare @count_hackers TABLE
(
    hacker_id int,
    submission_date date
);


Declare @subdate date;
declare @remainingdate date;

insert into @regular_hackers
select 
    hacker_id,
    submission_date
from submissions
where submission_date like '2016-03-01';

set @subdate= '2016-03-01';
set @remainingdate= '2016-03-01'

while @subdate < '2016-03-15'
BEGIN
 
 set @subdate = dateadd(day,1,@subdate);

insert into @regular_hackers 
select 
s.hacker_id,
s.submission_date from submissions s
join @regular_hackers rh on rh.hacker_id= s.hacker_id and
rh.submission_date like @remainingdate
where s.submission_date like @subdate;


set @remainingdate =  dateadd(day,1,@remainingdate);

end;

Insert into @count_hackers
select 
    count(distinct hacker_id),
    submission_date
    from @regular_hackers
    group by submission_date;
 
 
 
    
with max_hacker as(
SELECT
ROW_NUMBER() OVER (PARTITION BY submission_date ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC) AS row_number,
s.hacker_id,
s.submission_date,
h.name
FROM
submissions s
JOIN
hackers h ON h.hacker_id = s.hacker_id
GROUP BY
submission_date, s.hacker_id, h.name
)

select
    s.submission_date,
    ch.hacker_id,
    mh.hacker_id,
    mh.name from submissions s
    join max_hacker mh on mh.submission_date =s.submission_date and
    row_number=1
    join @count_hackers ch on ch.submission_date=s.submission_date
    group by s.submission_date, mh.hacker_id,mh.name,ch.hacker_id
    order by s.submission_date
