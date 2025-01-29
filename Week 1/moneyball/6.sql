-- write a SQL query to return the top 5 teams, 
-- sorted by the total number of hits by players in 2001.

    -- Call the column representing total hits by players in 2001 “total hits”.  
    -- Sort by total hits, highest to lowest. 
    -- Your query should return two columns, 
        -- one for the teams’ names and 
        -- one for their total hits in 2001.

SELECT "name", SUM("H") AS "total hits" FROM (
    SELECT * FROM "teams"
    JOIN "performances" ON "performances"."team_id" = "teams"."id"
)
WHERE "year" = 2001 
GROUP BY "name"
ORDER BY "total hits" DESC
LIMIT 5;


SELECT "team_id", ("H"),"year" FROM "performances"
WHERE "year" = 2001
-- GROUP BY "team_id"
ORDER BY "H";
