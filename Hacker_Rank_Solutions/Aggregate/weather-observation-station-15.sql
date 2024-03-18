-- code by Baalu
-- weather-observation-station-15

select round(long_w,4) from station
where lat_N < 137.2345
order by lat_n desc
limit  1;