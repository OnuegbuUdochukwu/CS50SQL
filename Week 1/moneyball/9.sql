-- write a SQL query to fi nd the 5 lowest paying teams (by average salary) in 2001.

-- Round the average salary column to two decimal places and call it “average salary”. 
-- Sort the teams by average salary, least to greatest. 
    -- Your query should return a table with two columns, 
        -- one for the teams’ names and 
        -- one for their average salary.

SELECT "name", ROUND(AVG("salary"), 2) AS "average salary" FROM (
    SELECT * FROM "teams" 
    JOIN "salaries" ON "salaries"."team_id" = "teams"."id"
)
WHERE "year" = 2001
GROUP BY "name"
ORDER BY "average salary" DESC
LIMIT 5;