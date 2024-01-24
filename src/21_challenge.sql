SELECT 
  alb.title AS 'Álbum',
  SUM(sng.duration_in_seconds) AS 'Duração'
FROM Trybefy.albums AS alb
  INNER JOIN Trybefy.songs AS sng
    ON alb.id = sng.album_id
GROUP BY alb.title
ORDER BY SUM(sng.duration_in_seconds) DESC;