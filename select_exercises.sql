USE codeup_test_db;

SELECT name AS 'Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band ';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 2000;
SELECT name FROM albums WHERE sales < 20;
SELECT * FROM albums WHERE genre = 'rock';