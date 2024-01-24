SELECT usr.full_name AS 'Nome completo', usr.email AS 'E-mail', pln.name AS 'Plano' FROM
  Trybefy.users AS usr 
  INNER JOIN Trybefy.plans AS pln
    ON usr.plan_id = pln.id
  ORDER BY usr.full_name;