-- Code by Baalu
-- First select the long_w from station and then filter by lat_n >38.7780
-- Finally to get the smallest lat_n limit the query to 1

select round(long_W,4) from station
where lat_n>38.7780 
order by lat_n
limit 1