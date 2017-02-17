SELECT p.PlaylistId, s.Name, COUNT(p.TrackId) AS Total
FROM PlaylistTrack p, Track t, Playlist s
WHERE p.TrackId = t.TrackId AND
p.PlaylistId = s.PlaylistId
GROUP BY p.PlaylistId
Order By Total DESC;
