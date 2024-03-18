-- code by Baalu
-- Contest Lederboard
-- First find the max score and group by theire challenge_id and hacker_id. Then find the sum of the maximum score and filter the result where scores greater than 0. Finally order the total score by descending and hacker_id by ascending

select s.hacker_id, h.name, sum(s.max_score) as total_score from
(
select hacker_id , challenge_id, max(score) as max_score
from submissions 
group by hacker_id, challenge_id
    ) as s
    join hackers h on s.hacker_id = h.hacker_id
    group by 1,2
    having total_score >0
    order by total_score desc, s.hacker_id;


