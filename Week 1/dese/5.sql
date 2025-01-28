-- write a SQL query to find cities with 3 or fewer public schools. 
-- Your query should return the names of the cities and 
-- the number of public schools within them, 
-- ordered from greatest number of public schools to least. 
-- If two cities have the same number of public schools, order them alphabetically

-- SELECT "city",COUNT("Public School") AS "Number Of Public Schools" FROM "schools"
-- GROUP BY "city"
-- HAVING "Number Of Public Schools" < 4
-- ORDER BY "Number Of Public Schools" DESC, "city";

SELECT "city", COUNT("type") AS "Public Schools" FROM "schools"
WHERE "type" = "Public School"
GROUP BY "city"
HAVING "Public Schools" < 4
ORDER BY "Public Schools" DESC, "city";