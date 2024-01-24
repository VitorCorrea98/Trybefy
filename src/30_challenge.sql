SELECT
  art.name AS 'Artista',
  COUNT(afs.user_id) AS 'Total de seguidores'
FROM Trybefy.artists AS art
  INNER JOIN Trybefy.artists_followers AS afs
    ON art.id = afs.artist_id
GROUP BY art.name
HAVING COUNT(afs.user_id) < 5;