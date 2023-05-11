SELECT 
  c.nome AS cancao, 
  COUNT(h.id_usuario) AS reproducoes
FROM cancoes AS c
INNER JOIN historico_reproducao AS h 
ON c.id = h.id_cancao
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;