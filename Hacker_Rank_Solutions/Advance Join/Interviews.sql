-- code by Baalu
-- Interviews
-- Since CTE is comparitively easier over Subquery. we use MS SQL server


WITH V AS (
    SELECT
        c.contest_id,
        c.hacker_id,
        c.name,
        SUM(vs.total_views) AS total_views,
        SUM(vs.total_unique_views) AS total_unique_views
    FROM
        contests c
        LEFT JOIN colleges co ON c.contest_id = co.contest_id
        LEFT JOIN challenges ch ON ch.college_id = co.college_id
        LEFT JOIN view_stats vs ON ch.challenge_id = vs.challenge_id
    GROUP BY
        c.contest_id,
        c.hacker_id,
        c.name
), 

 s AS (
    SELECT
        c.contest_id,
        c.hacker_id,
        c.name,
        SUM(s.total_submissions) AS total_submissions,
        SUM(s.total_accepted_submissions) AS total_accepted_submissions
    FROM
        contests c
        LEFT JOIN colleges co ON c.contest_id = co.contest_id
        LEFT JOIN challenges ch ON co.college_id = ch.college_id
        LEFT JOIN submission_stats s ON ch.challenge_id = s.challenge_id
    GROUP BY
        c.contest_id,
        c.hacker_id,
        c.name
)
SELECT
    v.contest_id,
    v.hacker_id,
    v.name,
    s.total_submissions AS tot_subs,
    s.total_accepted_submissions AS tot_acc_subs,
    v.total_views AS tot_views,
    v.total_unique_views AS tot_uniq_views
FROM v
JOIN s ON v.contest_id = s.contest_id
where s.total_submissions !=0
    and s.total_accepted_submissions !=0
    and v.total_views !=0
    and v.total_unique_views !=0
order by 1, 2, 3;