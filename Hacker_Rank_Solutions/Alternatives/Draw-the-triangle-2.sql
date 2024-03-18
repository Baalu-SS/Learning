-- code by Baalu
-- Draw-the-triangle-2
-- First set the number required 0 then use the repeat function 
SET @number = 0;
SELECT REPEAT('* ', @number := @number + 1)
FROM information_schema.tables
LIMIT 20;


