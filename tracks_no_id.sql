SELECT t.TrackId, t.Name, a.Title, m.Name, g.Name, t.Composer, t.Milliseconds, t.Bytes, t.UnitPrice
FROM Track t, Album a, MediaType m, Genre g
WHERE t.AlbumId = a.AlbumId AND
m.MediaTypeId = t.MediaTypeId AND
g.GenreId = t.GenreId;
