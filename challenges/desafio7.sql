SELECT 
  artistas.nome AS artista, 
  albuns.nome AS album,
  COUNT(seguidores.id_usuario) AS pessoas_seguidoras
FROM artistas
INNER JOIN albuns
ON artistas.id = albuns.id_artista
INNER JOIN seguidores
ON artistas.id = seguidores.id_artista
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;