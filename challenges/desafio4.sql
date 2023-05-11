SELECT 
  u.nome AS pessoa_usuaria, 
  IF (MAX(h.data_reproducao) >= '2021-01-01', 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM usuarios AS u
INNER JOIN historico_reproducao AS h 
ON u.id = h.id_usuario
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;