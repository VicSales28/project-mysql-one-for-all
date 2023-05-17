SELECT
CASE
WHEN COUNT(u.idade) <=30 THEN 'Até 30 anos'
WHEN COUNT(u.idade) <=60 THEN 'Entre 31 e 60 anos'
ELSE 'Maior de 60 anos'
END AS 'faixa_etaria',
COUNT(DISTINCT u.id) AS 'total_pessoas_usuarias',
COUNT(f.id_cancao) AS 'total_favoritadas'
FROM usuarios AS u
LEFT JOIN favoritas AS f
ON f.id_usuario=u.id
GROUP BY CASE 
    WHEN u.idade <= 30 THEN 'Até 30 anos'
    WHEN u.idade <= 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
    END
    ORDER BY faixa_etaria;