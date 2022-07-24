SELECT  
    u.user_name AS usuario,
    COUNT(h.id_user) AS qtde_musicas_ouvidas,
    ROUND(SUM(s.song_duration / 60), 2) AS total_minutos
FROM 
    `SpotifyClone`.tb_user AS u
INNER JOIN
    `SpotifyClone`.tb_playback_history AS h
ON
    u.id = h.id_user
INNER JOIN
    `SpotifyClone`.tb_song AS s
ON s.id = h.id_song
GROUP BY
    u.user_name;

