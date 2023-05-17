SELECT
  a.nome AS album,
  COUNT(*) AS favoritadas
FROM
favoritas AS f
INNER JOIN albuns AS a
ON f.id_album=a.id
GROUP BY f.id_album
ORDER BY favoritadas DESC, album ASC
LIMIT 3;