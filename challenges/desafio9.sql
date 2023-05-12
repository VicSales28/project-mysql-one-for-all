SELECT 
  COUNT(h.id_usuario) AS musicas_no_historico
FROM historico_reproducao AS h
INNER JOIN usuarios AS u 
ON h.id_usuario = u.id
WHERE u.nome = "Barbara Liskov";