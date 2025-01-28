-- write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001.
    -- Your query should return a table with one column, the salary of the player.

SELECT "salary" FROM (
    SELECT * FROM "salaries"
    JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
    JOIN "players" ON "players"."id" = "salaries"."player_id"
)
WHERE "HR" = (
    SELECT MAX("HR") FROM "performances"
)
AND "year" = 2001;