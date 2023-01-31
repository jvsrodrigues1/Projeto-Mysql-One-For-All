SELECT
	COUNT(hi.song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS hi
	JOIN SpotifyClone.users us ON hi.user_id = us.user_id AND us.user = 'Barbara Liskov'