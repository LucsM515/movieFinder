
SELECT * FROM STATUS_CONTROLE_ROTINA
    f.ID_FILME,
    f.TITLE,
    f.ANO_LANCAMENTO,
    f.SINOPSE,
    f.CAMINHO_POSTER,
    GROUP_CONCAT(g.DS_NOME) AS GENEROS
FROM 
    FILMES f
JOIN 
    FILME_GENERO fg ON f.ID_FILME = fg.ID_FILME
JOIN 
    GENEROS g ON fg.ID_GENERO = g.ID_GENERO
GROUP BY 
    f.ID_FILME
    





CREATE view VW_FILMES_GENEROS AS
SELECT f.ID_FILME,
       f.TITLE,
       f.ANO_LANCAMENTO,
       f.SINOPSE,
       GROUP_CONCAT(g.DS_NOME) AS GENEROS
FROM FILMES f
JOIN FILME_GENERO fg ON f.ID_FILME = fg.ID_FILME
JOIN GENEROS g ON fg.ID_GENERO = g.ID_GENERO
GROUP BY f.ID_FILME


CREATE VIEW VW_FILMES_GENEROS AS
SELECT f.ID_FILME,
       f.TITLE,
       f.ANO_LANCAMENTO,
       f.SINOPSE,
       f.CAMINHO_POSTER,
       GROUP_CONCAT(g.DS_NOME) AS GENEROS
FROM FILMES f
JOIN FILME_GENERO fg ON f.ID_FILME = fg.ID_FILME
JOIN GENEROS g ON fg.ID_GENERO = g.ID_GENERO
GROUP BY f.ID_FILME


drop view VW_FILMES_GENEROS





select * from VW_FILMES_GENEROS