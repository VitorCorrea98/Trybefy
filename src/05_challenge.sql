SELECT full_name AS "Nome completo", birthday AS "Data de nascimento" FROM Trybefy.users AS usr
 WHERE usr.birthday >= '1990-01-01' AND usr.active = 1;