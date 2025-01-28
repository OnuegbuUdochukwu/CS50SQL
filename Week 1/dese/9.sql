-- write a SQL query to find the name (or names) of the school district(s) 
-- with the single least number of pupils. Report only the name(s).


-- SELECT "name", MIN("pupils") FROM (
--    SELECT * FROM "districts"
--    JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
-- );

SELECT "name" FROM (
   SELECT * FROM "districts"
   JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
)
ORDER BY "pupils"
LIMIT 1;