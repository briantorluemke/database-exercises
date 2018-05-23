USE codeup_test_db;


SELECT 'Dropping albums release after 1991...' AS '-->INFO<--';
DELETE FROM albums WHERE release_date > 1991;
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Dropping albums with disco genre....' AS '-->INFO<--';
DELETE FROM albums WHERE genre = 'disco';
SELECT * FROM albu,s WHERE genre = 'disco';

SELECT 'Dropping albums by the beatles...' AS '-->INFO<--';
DELETE FROM albums WHERE artist = 'Nirvana';
SELECT * FROM albums WHERE artist = 'Nirvana';