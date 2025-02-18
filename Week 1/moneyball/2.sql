-- write a SQL query to find Cal Ripken Jr.’s salary history

SELECT "year", "salary" FROM "salaries"
WHERE "player_id" = (
    SELECT "id" FROM "players"
    WHERE "first_name" = "Cal" AND "last_name" LIKE "%Ripken%"
)
ORDER BY "year" DESC;