-- code by Baalu
-- weather-observation-station-20
-- First Find the rank and then take the count of the rank and divide by 2 now you can find the median.

Select round(lat_n,4)
from
(
    SELECT ROW_NUMBER() OVER (ORDER BY lat_n) AS rnk, lat_n 
    FROM station
) a

where rnk = (select round(count(*)/2) from station);



