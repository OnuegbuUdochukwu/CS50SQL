--  write a SQL query to fi nd the names of districts that are no longer operational.

SELECT "name" FROM "districts"
WHERE "name" LIKE '%non-op%';