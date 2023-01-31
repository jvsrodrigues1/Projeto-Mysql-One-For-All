SELECT
  COUNT(song_id) AS cancoes,
  (SELECT COUNT(artist_id) FROM SpotifyClone.artist) AS artistas,
  COUNT(DISTINCT album_id) AS albuns
FROM SpotifyClone.songs