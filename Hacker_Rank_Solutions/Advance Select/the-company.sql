-- Code By Baalu
select c.company_code,c.founder, count( distinct l.lead_manager_code)as cnt_lead_manager,
count(distinct s.senior_manager_code) as cnt_sen_manager,
count(distinct m.manager_code) as cnt_manager,
count(distinct e.employee_code)as cnt_employee from Company c
join Lead_Manager l on l.company_code=c.company_code
join senior_manager s on s.company_code =l.company_code
join manager m on m.company_code=s.company_code
join employee e on e.company_code=m.company_code
group by 1,2
order by c.company_code