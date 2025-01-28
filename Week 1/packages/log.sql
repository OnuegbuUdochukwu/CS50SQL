
-- *** The Lost Letter ***
--  Lost Letter was sent out from 900 Somerville Avenue. 
    --  Check if the package left her address and made it to a destination
SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" 
    WHERE "address" = '900 Somerville Avenue'
);
    -- Find the address and the type of address to which the Lost Letter was sent
SELECT "address", "type" FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "from_address_id" = (
       SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
    )
);


-- *** The Devious Delivery ***
-- Afraid there’s no “From” address. So the From Address IS NULL
    -- Check for the End Address where the From Address IS NULL
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;

    -- Check For address and type of the end address
SELECT "address", "type" FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL 
); 
-- 123 Sesame Street|Residential

    -- Get the contents of the package
SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;





-- *** The Forgotten Gift ***
-- The Forgotten Gift was sent from 109 Tileston Street.
    -- Find the contents of the Gift
SELECT "contents" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
);
-- Maegan / Mikel