SELECT
  usr.full_name AS 'Pessoa usuária',
  COUNT(afs.user_id) 'Artistas que segue'
FROM Trybefy.users AS usr
  INNER JOIN Trybefy.artists_followers AS afs
    ON usr.id = afs.user_id
GROUP BY usr.full_name
ORDER BY usr.full_name;