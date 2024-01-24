SELECT alb.title AS 'Album', alb.release_year AS 'Ano de lançamento', art.name AS 'Artista' FROM 
  Trybefy.artists AS art
  INNER JOIN Trybefy.albums AS alb
    ON art.id = alb.artist_id
  WHERE alb.title LIKE '%you%'
  ORDER BY alb.release_year;