-- :) SQL files exist
-- :) 1.sql produces correct result
-- :) 2.sql produces correct result
-- :) 3.sql produces correct result
-- :) 4.sql produces correct result
-- :) 5.sql produces correct result
-- :( 6.sql produces correct result
--     expected "618, Minnesota...", not "242, Seattle M..."
-- :) 7.sql produces correct result
-- :) 8.sql produces correct result
-- :( 9.sql produces correct result
--     expected "200000.0, Phil...", not "10938095.33, N..."
-- :( 10.sql produces correct result
--     Query returned incorrect results
-- :( 11.sql produces correct result
--     Error when executing query: missing statement
-- :( 12.sql produces correct result
--     Error when executing query: missing statement

--  write a SQL query to find the players among the 10 least expensive players per hit and 
-- among the 10 least expensive players per RBI in 2001.

-- Your query should return a table with two columns, 
    -- one for the players’ first names and one of their last names.  
    -- You can calculate a player’s salary per RBI 
        -- by dividing their 2001 salary by their number of RBIs in 2001.  
    -- You may assume, for simplicity, 
    -- that a player will only have one salary and one performance in 2001. 
-- Order your results by player ID, 
-- least to greatest (or alphabetically by last name, as both are the same in this case!).
-- Keep in mind the lessons you’ve learned in 10.sql and 11.sql !


-- SELECT DISTINCT "first_name", "last_name" FROM (
--     SELECT * FROM "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
--     WHERE "performances"."year" = "salaries"."year"
-- )
-- WHERE "H" != 0 AND "year" = 2001
-- -- ORDER BY (("salary")/ "H"), "first_name", "last_name"

-- INTERSECT

-- SELECT DISTINCT "first_name", "last_name" FROM (
--     SELECT * FROM "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
--     WHERE "performances"."year" = "salaries"."year"
-- )
-- WHERE "RBI" != 0 AND "year" = 2001
-- -- WHERE "year" = 2001
-- -- ORDER BY (("salary")/ "RBI"), "last_name", "first_name"
-- ORDER BY "last_name", "first_name"
-- LIMIT 10;

-- SELECT DISTINCT "first_name", "last_name" FROM (
--     SELECT * FROM "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
--     WHERE "performances"."year" = "salaries"."year" = 2001

--     AND "players"."id" = (
--         SELECT "salaries"."player_id" FROM "salaries"
--         JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
--         WHERE "performances"."year" = "salaries"."year" = 2001 AND "H" > 0
--         ORDER BY "salary"/"H"
--         LIMIT 10
--     )
-- )
-- INTERSECT

-- SELECT DISTINCT "first_name", "last_name" FROM (
--     SELECT * FROM "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
--     WHERE "performances"."year" = "salaries"."year"

--     AND "players"."id" = (
--         SELECT "salaries"."player_id" FROM "salaries"
--         JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
--         WHERE "performances"."year" = "salaries"."year" = 2001 AND "RBI" > 0
--         ORDER BY "salary"/"RBI"
--         LIMIT 10
--     )
-- );
-- -- ORDER BY "last_name", "first_name";

-- SELECT DISTINCT "first_name", "last_name" FROM (
--     "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
--     -- WHERE "performances"."year" = "salaries"."year" = 2001
--     AND "players"."id" IN (
--         SELECT "salaries"."player_id" FROM "salaries"
--         JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
--         WHERE "performances"."year" = "salaries"."year" = 2001 AND "H" > 0
--         ORDER BY "salary"/"H"
--         LIMIT 10
--     )
-- )
-- INTERSECT
-- SELECT DISTINCT "first_name", "last_name" FROM (
--     "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
--     WHERE "performances"."year" = "salaries"."year"
--     AND "players"."id" IN (
--         SELECT "salaries"."player_id" FROM "salaries"
--         JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
--         WHERE "performances"."year" = "salaries"."year" = 2001 AND "RBI" > 0
--         ORDER BY "salary"/"RBI"
--         LIMIT 10
--     )
-- );

-- CHAT

-- SELECT DISTINCT "players"."first_name", "players"."last_name"
-- FROM "players"
-- JOIN "salaries" ON "players"."id" = "salaries"."player_id"
-- JOIN "performances" ON "players"."id" = "performances".player_id
-- WHERE "salaries"."year" = 2001 AND "performances"."year" = 2001
-- AND "players"."id" IN (
--     SELECT "player_id"
--     FROM "salaries"
--     JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
--     WHERE "salaries"."year" = 2001 AND "performances"."year" = 2001 AND "performances"."H" > 0
--     ORDER BY "salaries"."salary" / "performances"."H" ASC
--     LIMIT 10
-- )
-- INTERSECT
-- SELECT DISTINCT "players"."first_name", "players"."last_name"
-- FROM "players"
-- JOIN "salaries" ON "players"."id" = "salaries"."player_id"
-- JOIN "performances" ON "players"."id" = "performances"."player_id"
-- WHERE "salaries"."year" = 2001 AND "performances"."year" = 2001
-- AND "players"."id" IN (
--     SELECT "player_id"
--     FROM "salaries"
--     JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
--     WHERE "salaries"."year" = 2001 AND "performances"."year" = 2001 AND "performances"."RBI" > 0
--     ORDER BY "salaries"."salary" / "performances"."RBI" ASC
--     LIMIT 10
-- );



-- SELECT DISTINCT "first_name", "last_name" FROM (
--     SELECT * FROM "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
--     WHERE "performances"."year" = 2001 AND "salaries"."year" = 2001 AND "H" != 0
--     ORDER BY (("salary")/ "H")
--     LIMIT 10
-- )

-- INTERSECT

-- SELECT DISTINCT "first_name", "last_name" FROM (
--     SELECT * FROM "players"
--     JOIN "salaries" ON "salaries"."player_id" = "players"."id"
--     JOIN "performances" ON "performances"."player_id" = "players"."id"
--     WHERE "performances"."year" = 2001 AND "salaries"."year" = 2001 AND "RBI" != 0
--     ORDER BY (("salary")/ "RBI")
--     LIMIT 10
-- )
-- ;
SELECT "first_name", "last_name" FROM (
SELECT DISTINCT "first_name", "last_name", "id" FROM (
    SELECT "first_name", "last_name", "players"."id" FROM "performances"
    JOIN "players" ON "players"."id" = "performances"."player_id"
    JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id" AND "performances"."year" = "salaries"."year"
    WHERE "performances"."year" = 2001 AND "H" != 0 
    ORDER BY (("salary")/ "H")
    LIMIT 10
)
INTERSECT
SELECT DISTINCT "first_name", "last_name", "id" FROM (
    SELECT "first_name", "last_name", "players"."id" FROM "performances"
    JOIN "players" ON "players"."id" = "performances"."player_id"
    JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id" AND "performances"."year" = "salaries"."year"
    WHERE "performances"."year" = 2001 AND "RBI" != 0 
    ORDER BY (("salary")/ "RBI")
    LIMIT 10
)
ORDER BY "id");
