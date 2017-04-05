USE codeup_test_db;
SELECT 'Albums with release date after 1991:' AS 'info';
DELETE FROM albums WHERE release_date > 1991;

select artist, name, release_date from albums \T;

-- SELECT 'albums with genre = disco:' AS 'info';
-- DELETE FROM albums WHERE genre = 'disco';

-- SELECT 'albums by Whitney Houston:' AS 'info';
-- DELETE FROM albums WHERE artist LIKE '%Whitney Houston%';
