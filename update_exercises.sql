USE codeup_test_db;
SELECT 'All Albums' AS 'info';
SELECT artist, name, sales FROM albums\G

UPDATE albums
SET sales = (sales * 10);

SELECT artist, name, sales FROM albums \G

SELECT 'Albums released before 1980:' AS 'Info';
SELECT artist, name, release_date FROM albums WHERE release_date < 1980\G

UPDATE albums
SET release_date = (release_date - 100) 
WHERE release_date < 1980;

SELECT artist, name, release_date FROM albums WHERE release_date < 1900\G

SELECT 'Albums by Michael Jackson:' AS 'Info';
SELECT artist, name FROM albums WHERE artist = 'Michael Jackson' \G

UPDATE albums
SET artist = 'Peter Jackson' 
WHERE artist = 'Michael Jackson';

SELECT artist, name FROM albums WHERE artist = 'Peter Jackson' \G

