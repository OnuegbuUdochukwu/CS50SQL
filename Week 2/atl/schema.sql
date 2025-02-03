CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "check_ins" (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "check_in_datetime" DATETIME,
    "flight_id" INTEGER,
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id")
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concourse" CHAR,
    PRIMARY KEY ("id")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_id" INTEGER,
    "departure_airport_code" NUMERIC,
    "arrival_airport_code" NUMERIC,
    "expected_departure_datetime" DATETIME,
    "expected_arrival_datetime" DATETIME,
    PRIMARY KEY ("id")
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);