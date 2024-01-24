SELECT art.name AS 'Artista', GROUP_CONCAT(title) AS 'Álbuns' FROM 
  Trybefy.artists AS art
  INNER JOIN Trybefy.albums AS alb
    ON art.id = alb.artist_id
  GROUP BY art.name
  ORDER BY art.name;