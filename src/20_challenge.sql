SELECT 
  art.name AS 'Artista',
  alb.title AS 'Álbum',
  sng.title AS 'Música'
FROM Trybefy.artists AS art
  INNER JOIN Trybefy.albums AS alb
    ON art.id = alb.artist_id
  INNER JOIN Trybefy.songs AS sng
    ON alb.id = sng.album_id
WHERE art.name NOT LIKE '%The Beatles%'
ORDER BY art.name, alb.title, sng.title;