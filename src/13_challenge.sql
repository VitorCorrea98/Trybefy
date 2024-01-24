SELECT art.name AS 'Artista' FROM 
  Trybefy.artists AS art
  INNER JOIN Trybefy.albums AS alb
    ON art.id = alb.artist_id
  GROUP BY art.name
  HAVING COUNT(alb.id) >= 3
  ORDER BY art.name