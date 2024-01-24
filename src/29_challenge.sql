SELECT
  art.name AS 'Artista'
FROM Trybefy.artists AS art
  INNER JOIN Trybefy.artists_followers AS afs
    ON art.id = afs.artist_id
GROUP BY art.name
HAVING COUNT(afs.user_id) > 0
ORDER BY COUNT(afs.user_id) DESC
LIMIT 1;