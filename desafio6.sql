SELECT
	MIN(pl.value) AS faturamento_minimo,
	MAX(pl.value) AS faturamento_maximo,
	round(((SUM(pl.value)) / (COUNT(us.plan_id))), 2) AS faturamento_medio,
	SUM(pl.value) AS faturamento_total
FROM SpotifyClone.plans AS pl
	JOIN SpotifyClone.users us ON pl.plan_id = us.plan_id