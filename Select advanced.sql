SELECT g.genre_name, count(a.artist_name)
FROM genres AS g
LEFT JOIN artists_genres AS ag ON g.genre_id = ag.genre_id
LEFT JOIN artists AS a ON ag.artist_id = a.artist_id
GROUP BY g.genre_name
ORDER BY count(a.artist_id) DESC;

SELECT t.track_name, a.year
FROM albums AS a 
LEFT JOIN tracks AS t ON t.album_id = a.album_id
WHERE (a.year >= 2019) AND (a.year <= 2020);

SELECT a.album_name, AVG(t.lenght)
FROM albums AS a
LEFT JOIN tracks AS t ON t.album_id = a.album_id
GROUP BY a.album_name
ORDER BY AVG(t.lenght);

SELECT DISTINCT a.artist_name
FROM artists AS a
WHERE a.artist_name NOT IN (
    SELECT DISTINCT a.artist_name
	FROM artists AS a
    LEFT JOIN artists_albums AS aa ON a.artist_id = aa.artist_id
    LEFT JOIN albums as al on al.album_id = aa.album_id
    WHERE al.year = 2020)
ORDER BY a.artist_name;

SELECT DISTINCT c.collection_name
FROM collections AS c
LEFT JOIN tracks_collections AS tc on c.collection_id = tc.collection_id
LEFT JOIN tracks AS t ON t.track_id = tc.track_id
LEFT JOIN albums AS al ON al.album_id = t.album_id
LEFT JOIN artists_albums AS aa ON aa.album_id = al.album_id
LEFT JOIN artists AS a ON a.artist_id = aa.artist_id
WHERE a.artist_name ILIKE '%%curtis%%'
ORDER BY c.collection_name;

SELECT al.album_name
FROM albums AS al
LEFT JOIN artists_albums AS aa ON al.album_id = aa.album_id
LEFT JOIN artists AS a ON a.artist_id = aa.artist_id
LEFT JOIN artists_genres AS ag on a.artist_id = ag.artist_id
LEFT JOIN genres AS g ON g.genre_id = ag.genre_id
GROUP BY al.album_name
HAVING count(DISTINCT g.genre_name) > 1
ORDER BY al.album_name;

SELECT t.track_name
FROM tracks AS t
LEFT JOIN tracks_collections AS tc ON t.track_id = tc.track_id
WHERE tc.track_id IS NULL;

SELECT a.artist_name, t.lenght
FROM tracks AS t
LEFT JOIN albums AS al ON al.album_id = t.album_id
LEFT JOIN artists_albums AS aa ON aa.album_id = al.album_id
LEFT JOIN artists AS a ON a.artist_id = aa.artist_id
GROUP BY a.artist_name, t.lenght
HAVING t.lenght = (SELECT min(lenght) FROM tracks)
ORDER BY a.artist_name;

SELECT DISTINCT a.album_name
FROM albums AS a
LEFT JOIN tracks AS t ON t.album_id = a.album_id
WHERE t.album_id IN (
    SELECT album_id
    FROM tracks
    GROUP BY album_id
    HAVING count(track_id) = (
        SELECT count(track_id)
        FROM tracks
        GROUP BY album_id
        ORDER BY count
        LIMIT 1))
ORDER BY a.album_name