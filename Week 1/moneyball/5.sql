-- write a SQL query to find all teams that Satchel Paige (https://en.wikipedia.org/wiki/Satchel_Paige) played for
-- Your query should return a table with a single column, one for the name of the teams

SELECT "name" FROM (
    SELECT * FROM "teams"
    JOIN "performances" ON "performances"."team_id" = "teams"."id"
    JOIN "players" ON "players"."id" = "performances"."player_id"
)
WHERE "first_name" = "Satchel" AND "last_name" = "Paige";