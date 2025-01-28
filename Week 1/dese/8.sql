-- write a SQL query to display the names of all school districts 
-- and the number of pupils enrolled in each.


SELECT "name", "pupils" FROM (
    SELECT * FROM "districts"
    JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
);