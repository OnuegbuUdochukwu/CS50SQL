-- write a SQL query to find the 10 cities with the most public schools. 
-- Your query should return the names of the cities and 
-- the number of public schools within them, 
-- ordered from greatest number of public schools to least. 
-- If two cities have the same number of public schools, order them alphabetically

-- SELECT "city",COUNT("Public School") AS "Number Of Public Schools" FROM "schools"
-- GROUP BY "city"
-- ORDER BY "Number Of Public Schools" DESC, "city"
-- LIMIT 10;

SELECT "city", COUNT("type") AS "Public Schools" FROM "schools"
WHERE "type" = "Public School"
GROUP BY "city"
ORDER BY "Public Schools" DESC, "city"
LIMIT 10;