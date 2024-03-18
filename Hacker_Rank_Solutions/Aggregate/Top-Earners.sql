-- code by Baalu 
-- earnings-of-employees

SELECT earnings, COUNT(*) 
FROM (
    SELECT e.*, (salary * months) AS earnings 
    FROM employee e
) AS emp
GROUP BY earnings
ORDER BY earnings DESC
limit 1;



