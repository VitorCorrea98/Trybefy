SELECT
  art.name AS 'Artista',
  COUNT(hps.song_id) AS 'Quantidade de músicas reproduzidas'
FROM Trybefy.artists AS art
  INNER JOIN Trybefy.albums AS alb
    ON art.id = alb.artist_id
  INNER JOIN Trybefy.songs AS sng
    ON alb.id = sng.album_id
  INNER JOIN Trybefy.history_play_songs AS hps
    ON sng.id = hps.song_id
GROUP BY art.name
HAVING COUNT(hps.song_id) > 10;