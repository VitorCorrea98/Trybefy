SELECT
  sng.title AS 'Título',
  sng.duration_in_seconds AS 'Duração',
  alb.title AS 'Álbum'
FROM Trybefy.songs AS sng
  INNER JOIN Trybefy.albums AS alb
    ON sng.album_id = alb.id
WHERE sng.duration_in_seconds BETWEEN 300 AND 480
ORDER BY sng.duration_in_seconds ASC;