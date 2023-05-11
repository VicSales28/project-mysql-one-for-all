SELECT 
  a.nome AS artista, 
  alb.nome AS album
FROM artistas AS a
INNER JOIN albuns AS alb
ON a.id = alb.id_artista
WHERE a.nome = "Elis Regina"
ORDER BY album ASC;