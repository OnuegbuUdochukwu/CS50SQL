-- write a SQL query to answer a question you have about the data! 
-- The query should:
    --  Involve at least one JOIN or subquery


SELECT "name", "dropped", "proficient" FROM (
    SELECT * FROM "schools"
    JOIN "graduation_rates" ON "graduation_rates"."school_id" = "schools"."id"
    JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "schools"."district_id"
);


:) SQL files exist
:) 1.sql produces correct result
:) 2.sql produces correct result
:) 3.sql produces correct result
:( 4.sql produces correct result
    expected "64, Springfiel...", not "71, Springfiel..."
:( 5.sql produces correct result
    expected "3, Ashburnham\...", not "3, Ashburnham\..."
:( 6.sql produces correct result
    expected "Weston High\nU...", not "Tahanto Region..."
:) 7.sql produces correct result
:) 8.sql produces correct result
:( 9.sql produces correct result
    expected "Savoy", not "64, Savoy"
:( 10.sql produces correct result
    expected "41318.9, Provi...", not "41318.9, Provi..."
:) 11.sql produces correct result
:( 12.sql produces correct result
    expected "31703.4, 78.9,...", not "31703.4, 78.9,..."
:) 13.sql runs without error