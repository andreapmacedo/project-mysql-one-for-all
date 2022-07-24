SELECT
    s.song_name AS cancao,
    COUNT(h.id_song) AS reproducoes
FROM
    `SpotifyClone`.tb_song AS s
INNER JOIN
    `SpotifyClone`.tb_playback_history AS h
ON s.id = h.id_song
GROUP BY
    cancao
ORDER BY
    reproducoes DESC, cancao ASC
LIMIT 2;