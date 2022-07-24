SELECT 
    (SELECT COUNT(*) FROM SpotifyClone.tb_song) as cancoes,
    (SELECT COUNT(*) FROM SpotifyClone.tb_artist) as artistas,
    (SELECT COUNT(*) FROM SpotifyClone.tb_album) as albuns;