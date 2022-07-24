SELECT
    art.artist_name AS artista,
    alb.album_name AS album,
    COUNT(fol.id_user) AS seguidores
FROM 
    `SpotifyClone`.tb_artist AS art
INNER JOIN
    `SpotifyClone`.tb_album AS alb
ON
    art.id = alb.id_artist
INNER JOIN
    `SpotifyClone`.tb_followed_artist AS fol
ON
    art.id = fol.id_artist
GROUP BY artista, album        
ORDER BY seguidores DESC, artista, album;
