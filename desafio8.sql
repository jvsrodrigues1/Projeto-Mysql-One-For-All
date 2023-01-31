SELECT
	ar.artist_name AS artista,
    al.album_name AS album
FROM SpotifyClone.albums AS al
	JOIN SpotifyClone.artist ar ON al.artist_id = ar.artist_id
    WHERE ar.artist_name = 'Elis Regina'
    ORDER BY ar.artist_name ASC