CREATE TABLE EXAMPLE_TABLE (
  firstName VARCHAR(100),
  lastName  VARCHAR(100),
  age       INT
);

INSERT INTO EXAMPLE_TABLE (firstName, lastName, age)
VALUES
  ('Philippe', 'Fanaro', 28),
  ('Gilberto', 'Fanaro', 60),
  ('Patrizia', 'Fanaro', 54),
  ('Gabriela', 'Cunha' , 23),
  ('Matheus' , 'Cunha' , 22),
  ('Lucas'   , 'Cunha' , 21),
  ('Luke'    , 'Fanaro', 16)
RETURNING *;

SELECT *
FROM   EXAMPLE_TABLE
WHERE  lastName = 'Fanaro';

SELECT   lastName AS "Sobrenome", COUNT(firstName) AS "Número de Integrantes"
FROM     EXAMPLE_TABLE
GROUP BY lastName
ORDER BY "Número de Integrantes" DESC;

DROP TABLE EXAMPLE_TABLE;
