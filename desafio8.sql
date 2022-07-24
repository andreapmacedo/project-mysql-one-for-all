SELECT
    art.artist_name AS artista,
    alb.album_name AS album
FROM
    `SpotifyClone`.tb_album AS alb
INNER JOIN
    `SpotifyClone`.tb_artist AS art 
ON 
    alb.id_artist = art.id
GROUP BY artista, album
HAVING artista = 'Walter Phoenix'
ORDER BY album;

    
