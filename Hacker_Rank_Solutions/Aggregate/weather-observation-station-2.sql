-- code by Baalu
-- weather-observation-station-2
select round(sum(lat_n),2) as total_lat, 
round(sum(long_w),2) as total_long 
from station;
