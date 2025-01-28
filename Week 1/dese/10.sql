-- write a SQL query to find the 10 public school districts with 
-- the highest per-pupil expenditures. 
-- Your query should return the names of the districts and 
-- the per- pupil expenditure for each.

-- SELECT "name", "per_pupil_expenditure" FROM (
--     SELECT * FROM "districts"
--     JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
-- )
-- ORDER BY "per_pupil_expenditure" DESC, 
-- LIMIT 10; 

SELECT "name", "per_pupil_expenditure" FROM (
    SELECT * FROM "districts"
    JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
)
WHERE "type" LIKE '%Public%'
ORDER BY "per_pupil_expenditure" DESC, "name"
LIMIT 10; 