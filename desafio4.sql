SELECT
	DISTINCT us.user usuario,
  IF (MAX(YEAR(hi.play_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS us
	JOIN SpotifyClone.history hi ON us.user_id = hi.user_id
  GROUP BY us.user
	ORDER BY us.user ASC