-- Update an artist's information:
UPDATE artists SET country = 'Canada' WHERE artist_id = 1;

-- Update an album's information:
UPDATE albums SET release_year = 2022 WHERE album_id = 1;

-- Deleting Data:
-- Delete an artist and associated albums and tracks:
DELETE FROM artists WHERE artist_id = 1;

-- Delete a track:
DELETE FROM tracks WHERE track_id = 1;
-- Remove a track from a playlist:
DELETE FROM playlist_tracks WHERE playlist_id = 1 AND track_id = 2;

-- Joining Tables:
-- Get all tracks with their album and artist information:
SELECT tracks.track_id, tracks.track_name, tracks.duration, albums.album_name, artists.artist_name
FROM tracks
JOIN albums ON tracks.album_id = albums.album_id
JOIN artists ON albums.artist_id = artists.artist_id;

-- Get all playlists with their associated tracks:
SELECT playlists.playlist_id, playlists.playlist_name, tracks.track_name
FROM playlists
JOIN playlist_tracks ON playlists.playlist_id = playlist_tracks.playlist_id
JOIN tracks ON playlist_tracks.track_id = tracks.track_id;

-- Querying Data:
-- Get all artists:
SELECT * FROM artists;
-- Get all albums by a specific artist:
SELECT * FROM albums WHERE artist_id = 1;

-- Get all tracks in a specific album:
SELECT * FROM tracks WHERE album_id = 1;

-- Get all playlists:
SELECT * FROM playlists;

-- Get all tracks in a specific playlist:
SELECT tracks.* FROM tracks
JOIN playlist_tracks ON tracks.track_id = playlist_tracks.track_id
WHERE playlist_tracks.playlist_id = 1;
