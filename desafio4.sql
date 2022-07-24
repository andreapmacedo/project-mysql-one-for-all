SELECT
    u.user_name AS usuario,
    IF (MAX(YEAR(h.reproduced_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
    `SpotifyClone`.tb_user AS u
INNER JOIN
    `SpotifyClone`.tb_playback_history AS h
ON
    u.id = h.id_user
GROUP BY
    u.id
ORDER BY
    u.user_name;