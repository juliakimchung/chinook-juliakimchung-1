SELECT a.ArtistId, a.Name, Count(a.ArtistId) AS Total
FROM Artist a, Album b, Track t, Invoice c, InvoiceLine d
WHERE a.ArtistId = b.ArtistId AND
t.AlbumId = b.AlbumId AND
t.TrackId = d.TrackId
GROUP BY a.ArtistId
ORDER BY Total DESC 
LIMIT 3
