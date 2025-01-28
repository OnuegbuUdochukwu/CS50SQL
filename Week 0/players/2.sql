-- write a SQL query to fi nd the side (e.g., right or left) Babe Ruth hit.

SELECT "bats" FROM "players"
WHERE "first_name" = 'Babe'
AND "last_name" = 'Ruth';