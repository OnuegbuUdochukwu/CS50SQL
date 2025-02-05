CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "password" NUMERIC NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);

CREATE TABLE "schools" (
    "id" INTEGE,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year_founded" NUMERIC,
    PRIMARY KEY ("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "connections" (
    "connection_id" INTEGER,
    "user_id_1" INTEGER,
    "user_id_2" INTEGER,
    CHECK("user_id_1" != "user_id_2"),
    PRIMARY KEY ("connection_id"),
    FOREIGN KEY ("user_id_1") REFERENCES "users" ("id"),
    FOREIGN KEY ("user_id_2") REFERENCES "users" ("id"),
);

CREATE TABLE "school_affiliation" (
    "affiliation_id" INTEGER,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "affiliation_start_date" DATETIME,
    "affiliation_end_date" DATETIME,
    "degree_type" TEXT NOT NULL,
    PRIMARY KEY ("affiliation_id"),
    FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
    FOREIGN KEY ("school_id") REFERENCES "schools" ("id")
);

CREATE TABLE "company_affiliation" (
    "affiliation_id" INTEGER,
    "user_id" INTEGER,
    "company_id" INTEGER,
    "affiliation_start_date" DATETIME,
    "affiliation_end_date"  DATETIME,
    "title" TEXT,
    PRIMARY KEY ("affiliation_id"),
    FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
    FOREIGN KEY ("company_id") REFERENCES "companies" ("id")
);