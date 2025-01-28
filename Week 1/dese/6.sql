-- write a SQL query to find the names of schools (public or charter!) 
-- that reported a 100% graduation rate.

-- SELECT "name" FROM "schools" WHERE "id" = (
--     SELECT "school_id" FROM "graduation_rates"
--     WHERE "graduated" = 100
-- );

SELECT "name" FROM (
    SELECT * FROM "schools"
    JOIN "graduation_rates" ON "graduation_rates"."school_id" = "schools"."id"
)
WHERE "graduated" = 100
ORDER BY "name" DESC;