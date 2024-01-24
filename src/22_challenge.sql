SELECT 
  art.name AS 'Artista',
  COUNT(sng.title) AS 'Quantidade de músicas'
FROM Trybefy.artists AS art
  INNER JOIN Trybefy.albums AS alb
    ON art.id = alb.artist_id
  INNER JOIN Trybefy.songs AS sng
    ON alb.id = sng.album_id
GROUP BY art.name
ORDER BY COUNT(sng.title) DESC, art.name
LIMIT 3;