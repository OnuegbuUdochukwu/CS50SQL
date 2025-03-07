-- write a SQL query to count how many prints by Hiroshige have English titles 
-- that refer to the “Eastern Capital”. Hiroshige’s prints were created in 
-- Japan’s “Edo period,” referencing the eastern capital city of Edo 
-- (https://en.wikipedia.org/wiki/Edo), now Tokyo.

SELECT COUNT("english_title") FROM "views"
WHERE "english_title" LIKE "%Eastern Capital%"
AND "artist" = 'Hiroshige';