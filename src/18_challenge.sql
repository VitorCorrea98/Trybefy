SELECT sng.title AS 'Título', sng.duration_in_seconds AS 'Duração' FROM 
  Trybefy.songs AS sng
  WHERE sng.duration_in_seconds <= 240
  ORDER BY sng.duration_in_seconds;