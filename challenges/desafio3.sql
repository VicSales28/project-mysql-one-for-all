SELECT
  u.nome AS pessoa_usuaria,
  COUNT(h.id_usuario) AS musicas_ouvidas, 
  ROUND(SUM(c.duracao_segundos)/60, 2) AS total_minutos
FROM usuarios AS u
INNER JOIN historico_reproducao AS h
ON u.id = h.id_usuario
INNER JOIN cancoes AS c
ON c.id = h.id_cancao
GROUP BY u.nome
ORDER BY u.nome;