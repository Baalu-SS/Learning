-- code by Baalu
-- weather-observation-station-14

select round(max(lat_n),4) from station
where lat_N < 137.2345;