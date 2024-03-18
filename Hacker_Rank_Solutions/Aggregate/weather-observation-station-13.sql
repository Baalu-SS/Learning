-- code by Baalu
-- weather-observation-station-13

select round(sum(lat_n),4) from station
where lat_N > 38.7880 and lat_n < 137.2345;