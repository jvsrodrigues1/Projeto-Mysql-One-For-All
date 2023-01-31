SELECT
	ar.artist_name AS artista,
    al.album_name AS album,
    COUNT(fo.artist_id) AS seguidores
FROM SpotifyClone.albums AS al
	JOIN SpotifyClone.artist ar ON al.artist_id = ar.artist_id
    JOIN SpotifyClone.followers fo ON al.artist_id = fo.artist_id
    GROUP BY al.album_id
	ORDER BY seguidores DESC, artista ASC, album ASC