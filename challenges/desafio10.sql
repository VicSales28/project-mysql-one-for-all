CREATE TABLE SpotifyClone.favoritas(
    id_usuario INT NOT NULL,
    id_cancao INT NOT NULL,
    id_album INT NOT NULL,
    id_artista INT NOT NULL,
    PRIMARY KEY (id_usuario, id_cancao),

    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_cancao) REFERENCES cancoes(id),
    FOREIGN KEY (id_album) REFERENCES albuns(id),
    FOREIGN KEY (id_artista) REFERENCES artistas(id)
) engine = InnoDB;
INSERT INTO SpotifyClone.favoritas (id_usuario, id_cancao, id_album, id_artista)
VALUES
(1, 3, 1, 1),
(1, 6, 4, 3),
(1, 10, 8, 6),
(2, 4, 2, 2),
(3, 1, 1, 1),
(3, 3, 1, 1),
(4, 7, 5, 3),
(4, 4, 2, 2),
(5, 10, 8, 6),
(5, 2, 1, 1),
(8, 4, 2, 2),
(9, 7, 5, 3),
(10, 3, 1, 1);