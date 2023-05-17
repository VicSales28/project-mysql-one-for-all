SELECT
a.nome AS artista,
CASE
WHEN COUNT(*) >=5 THEN 'A'
WHEN COUNT(*) >=3 THEN 'B'
WHEN COUNT(*) >=1 THEN 'C'
ELSE '-'
END AS ranking
FROM favoritas AS f
LEFT JOIN artistas AS a
ON f.id_artista=a.id
GROUP BY f.id_artista;