UPDATE Trybefy.users AS usr SET usr.plan_id = 2  WHERE usr.plan_id = 3;

DELETE FROM Trybefy.plans AS pln WHERE pln.id = 3;