-- write a SQL query to return the top 5 teams, 
-- sorted by the total number of hits by players in 2001.

SELECT "name", "H" AS "total hits" FROM (
    SELECT * FROM "teams"
    JOIN "performances" ON "performances"."team_id" = "teams"."id"
)
WHERE "year" = 2001
ORDER BY "total hits" DESC
LIMIT 5;