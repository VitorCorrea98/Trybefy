SELECT art.name AS 'Artista', COUNT(alb.artist_id) AS 'Quantidade de álbuns' FROM 
  Trybefy.artists AS art
  INNER JOIN Trybefy.albums AS alb
    ON art.id = alb.artist_id
  GROUP BY art.name
  ORDER BY COUNT(alb.artist_id) DESC, art.name ASC;