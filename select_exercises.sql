-- 3. Explore the albums_db database 6 
-- 3a. How Many Rows?  6 rows returned
DESCRIBE albums;

-- 3b. How many unique artist names are in the table? 23 unique artist names returned
SELECT DISTINCT artist
FROM albums;

-- 3c. What is the primary key for the albums table? id is the primary key
DESCRIBE albums;

-- 3d. What is the oldest release date for any album in the albums table? Sgt. Pepper's Lonely Hearts Club Band What is the most recent release date? 2011
SELECT *
FROM albums
ORDER BY release_date ASC;

-- 4.  Write queries to find the following information:

-- 4a.  The name of all the albums by Pink Floyd -- query returned two albums The Darkside of the Moon and The Wall
SELECT *
FROM albums
WHERE artist = 'Pink Floyd';

-- 4b.  The year Sgt. Pepper's Lonely Hearts Club Band was released.  The query returned the album was released in 1967

Select *
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";

-- 4c.  The genre for the album Nevermind.  The query returns the genre = Grunge, Alternative rock
SELECT *
FROM albums
WHERE name = 'Nevermind';

-- 4d.  Which albums were released in the 1990s.  The query returns 
SELECT *
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

-- The query returned the following albums:
-- The Bodyguard, Jagged Little Pill, Come On Over, Falling into You, Let's Talk About Love, Dangerous, The Immaculate Collection, Titanic: Music from the Motion Picture, Metallica, Nevermind, Supernatural.

-- 4e. Which albums had less than 20 million certified sales?  The query returned 13 records.
SELECT *
FROM albums
WHERE sales < '20';

-- 4f.  All the albums withe a genre of "ROCK".  Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT *
FROM albums
WHERE genre = 'rock';

-- The query returned 5 albums and did not include "Hard Rock" and "Progressive Rock" because the query looked for genres that = rock, not contains rock.et







