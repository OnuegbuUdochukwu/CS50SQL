-- list the season number of, and title of, the first episode of every season.

SELECT "season", "title", "epsiode_in_season" FROM "episodes"
WHERE "episode_in_season" = 1;