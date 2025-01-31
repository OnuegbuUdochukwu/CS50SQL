-- The general manager has asked you for a report which details each player’s name, 
-- their salary for each year they’ve been playing, 
-- and their number of home runs for each year they’ve been playing. 
-- To be precise, the table should include:
    -- All player’s first names  
    -- All player’s last names  
    -- All player’s salaries  
    -- All player’s home runs  
    -- The year in which the player was paid that salary and hit those home runs


--  Your query should return a table with fi ve columns, per the above.  
    -- Order the results, first and foremost, by player’s IDs (least to greatest).  
    -- Order rows about the same player by year, in descending order. 
    -- Consider a corner case: suppose a player has multiple salaries or performances for a given year. 
    -- Order them first by number of home runs, in descending order, 
        -- followed by salary, in descending order.  
    -- Be careful to ensure that, for a single row, the salary’s year and the performance’s year match.

-- SELECT "first_name", "last_name", "salary", "HR", "year" FROM (
--     SELECT * FROM "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
-- )
-- ORDER BY "id", "year" DESC, "HR" DESC, "salary" DESC;



SELECT "first_name", "last_name", "salary", "HR", "year" FROM (
    SELECT * FROM "players"
    JOIN "salaries" ON "salaries"."player_id" = "players"."id"
    JOIN "performances" ON "performances"."player_id" = "players"."id"
    WHERE "performances"."year" = "salaries"."year"
)
ORDER BY "last_name", "first_name", "year" DESC, "HR" DESC, "salary" DESC;
-- EXCEPT
-- SELECT "first_name", "last_name", "salary", "HR", "year" FROM (
--     SELECT * FROM "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
-- ) 