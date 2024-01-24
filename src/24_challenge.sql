SELECT
  usr.full_name AS 'Nome',
  COUNT(hps.user_id) AS 'Quantidade de músicas reproduzidas'
FROM Trybefy.users AS usr
  INNER JOIN Trybefy.history_play_songs AS hps
    ON usr.id = hps.user_id
GROUP BY usr.full_name
ORDER BY COUNT(hps.user_id) DESC, usr.full_name;