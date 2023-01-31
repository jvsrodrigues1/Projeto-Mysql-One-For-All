SELECT
    DISTINCT us.user AS usuario,
    COUNT(hi.song_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(so.song_seconds/60), 2) AS total_minutos
FROM SpotifyClone.history AS hi
	JOIN SpotifyClone.songs so ON hi.song_id = so.song_id
  JOIN SpotifyClone.users us ON hi.user_id = us.user_id

	GROUP BY hi.user_id
    ORDER BY us.user