SELECT m.Name, Count(m.MediaTypeId) As Total
FROM MediaType m, Track t, InvoiceLine n
WHERE m.MediaTypeId = t.MediaTypeId AND
t.TrackId = n.TrackId
GROUP BY m.MediaTypeId
ORDER BY Total DESC;
