-- Done by Baalu
-- Top-competitors
-- First select the necessary columns then join the tables. Now the question says to list people who have acheived full score, so we match the difficulty score and the submission score. Then, it says list only people who have scored more than once. Finally, sort the result by descending count and if they have the same score sort by the hacker_id ascending

select s.hacker_id, h.name from submissions s
join hackers h on s.hacker_id=h.hacker_id
join challenges c on s.challenge_id=c.challenge_id
join difficulty d on d.difficulty_level=c.difficulty_level
where s.score=d.score
group by 1,2
having count(*)>1
order by count(*) desc, s.hacker_id asc;