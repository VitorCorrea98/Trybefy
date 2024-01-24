SELECT pln.name AS 'Plano', COUNT(usr.plan_id) AS 'Quantidade de usuários' FROM 
  Trybefy.plans AS pln
  INNER JOIN Trybefy.users AS usr
    ON pln.id = usr.plan_id
GROUP BY usr.plan_id
ORDER BY pln.name;