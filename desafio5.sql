SELECT
	DISTINCT so.song_name AS cancao,
    COUNT(hi.song_id) AS reproducoes
FROM SpotifyClone.history AS hi
    JOIN SpotifyClone.songs so ON hi.song_id = so.song_id
   GROUP BY so.song_id
   ORDER BY reproducoes DESC, cancao ASC
   LIMIT 2