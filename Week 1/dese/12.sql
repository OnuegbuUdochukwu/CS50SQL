-- write a SQL query to find public school districts 
-- with above-average per-pupil expenditures and  
-- an above-average percentage of teachers rated “exemplary”. 

-- Your query should return the districts’ names, 
-- along with their per-pupil expenditures and 
-- percentage of teachers rated exemplary. 
-- Sort the results first by the percentage of teachers rated exemplary (high to low), 
-- then by the per-pupil expenditure (high to low).


-- SELECT "name", "per_pupil_expenditure", "exemplary" FROM (
--     SELECT * FROM "districts"
--     JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
--     JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
-- )
-- ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;


-- SELECT "name", ("per_pupil_expenditure"), ("exemplary") FROM (
--     SELECT * FROM "districts"
--     JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
--     JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
-- )
-- WHERE "per_pupil_expenditure" > AVG("per_pupil_expenditure") AND "exemplary" > AVG("exemplary")
-- ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;



-- SELECT "name", "per_pupil_expenditure", ("exemplary") FROM (
--     SELECT * FROM "districts"
--     JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
--     JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
-- )
-- WHERE "per_pupil_expenditure" > (
--     SELECT AVG("per_pupil_expenditure") FROM (
--         SELECT * FROM "districts"
--         JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
--         JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
--     )
-- )
-- AND "exemplary" > (
--     SELECT AVG("exemplary") FROM (
--         SELECT * FROM "districts"
--         JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
--         JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
--     )
-- )
-- AND "type" LIKE '%Public%'
-- ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;


-- SELECT "name", "per_pupil_expenditure", ("exemplary") FROM (
--     SELECT * FROM "districts"
--     JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
--     JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
-- )
-- WHERE "per_pupil_expenditure" > (
--     SELECT AVG("per_pupil_expenditure") FROM "expenditures" -- 19528.9900252525
-- )
-- AND "exemplary" > (
--     SELECT AVG("exemplary") FROM  "staff_evaluations" -- 16.9380191693291
-- )
-- WHERE "type" LIKE '%Public%'
-- ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;

SELECT "name", "per_pupil_expenditure", ("exemplary") FROM (
    SELECT * FROM "districts"
    JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
    JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
)
WHERE "per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure") FROM "expenditures" 
)
AND "exemplary" > (
    SELECT AVG("exemplary") FROM  "staff_evaluations" 
)
AND "type" LIKE '%Public%'
ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;