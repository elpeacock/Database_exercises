USE codeup_test_db;
SELECT 'Pink Floyd Albums' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd'\G
SELECT 'Sgt. Pepper was released in:' AS 'Info'\G
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band'\G
SELECT 'The genre for Nevermind is:' AS 'Info'\G
SELECT genre FROM albums WHERE name = 'Nevermind'\G
SELECT 'These albums were released in the 1990s' AS 'Info' \G
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999 \G
SELECT 'These albums have had less than 20 million certified sales' AS 'Info' \G
SELECT name FROM albums WHERE sales < 20000000\G
SELECT 'These albums are in the rock genre:' AS 'Info';
SELECT name FROM albums WHERE genre LIKE '%Rock%'\G