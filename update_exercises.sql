USE codeup_test_db;

SELECT name AS 'All albums' FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT sales FROM albums;

SELECT name AS 'Albums released before 1980' FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT release_date FROM albums WHERE release_date = 1800;

SELECT name AS 'Albums by Michael Jackson' FROM albums WHERE artist like 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';