-- write SQL query to answer a question of your choice. 
-- This query should:
    -- Make use of AS to rename a column 
    -- Involve at least condition, using WHERE
    -- Sort by at least one column using ORDER BY


SELECT "first_name", "last_name", ("height" * "height")/"weight" AS "BMI" FROM "players" 
WHERE "debut" LIKE "2020%"
ORDER BY "first_name", "last_name"; 