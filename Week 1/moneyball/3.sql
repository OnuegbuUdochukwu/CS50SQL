-- write a SQL query to fi nd Ken Griffey Jr.’s home run history.
    -- Sort by year in descending order. 
    -- Note that there may be two players with the name “Ken Griffey.” 
    -- This Ken Griffey was born in 1969.  
        -- Your query should return a table with two columns, 
        -- one for year and one for home runs.

SELECT "year", "HR" FROM (
    SELECT * FROM "performances"
    JOIN "players" ON "players"."id" = "performances"."player_id"
)
WHERE "first_name" = "Ken" AND "birth_year" = 1969 AND "HR" > 0
ORDER BY "year" DESC;