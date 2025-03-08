.import --csv meteorites.csv meteorites_temp

CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT NOT NULL,
    "year" NUMERIC,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY("id")
);


UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = "";

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = "";

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = "";

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = "";

DELETE FROM "meteorites_temp" 
WHERE "nametype" = 'Relict';

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", ROUND("mass", 2), "discovery", "year", ROUND("lat", 2), ROUND("long", 2)
FROM "meteorites_temp"
ORDER BY "year", "name";

-- :) import.sql exists
-- :) import.sql runs without error
-- :) import.sql creates a table named "meteorites" 
-- :) import.sql creates a table named "meteorites" with all prescribed columns
-- :) data from CSV has been imported
-- :) no empty values from CSV are present in "meteorites" table
-- :) all decimal values in "meteorites" table are rounded to two places
-- :( no meteorites of type "relict" found in "meteorites" table
--     Found relict meteorite Brunflo from 1980
-- :) "meteorites" table properly sorts elements and assigns IDs