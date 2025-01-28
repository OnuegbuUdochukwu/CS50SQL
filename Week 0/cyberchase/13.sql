-- write a SQL query to explore a question of your choice. This query should:
-- Involve at least one condition, using WHERE with AND or OR


SELECT "title", "topic" FROM "episodes"
WHERE "title" LIKE "The%"
AND "air_date" BETWEEN "2003-01-01" AND "2004-12-31";