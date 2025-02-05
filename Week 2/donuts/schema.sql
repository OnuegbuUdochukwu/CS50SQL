CREATE TABLE "ingredients" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "units" NUMERIC NOT NULL,
    "price_per_unit"NUMERIC(10,2) NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "donut_ingredients" (
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    "quantity" INTEGER,
    PRIMARY KEY ("donut_id", "ingredient_id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts" ("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "gluten_free" BOOLEAN,
    "price" NUMERIC(10, 2) NOT NULL, 
    PRIMARY KEY ("id")  
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "order_number" INTEGER NOT NULL,
    "customer_id" INTEGER,
    PRIMARY KEY ("id")
    FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);

CREATE TABLE "customers" (
    "id" INTEGER, 
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_history" TEXT,
    PRIMARY KEY ("id")
);