SELECT InvoiceLine.TrackId , Track.Name, InvoiceLIne.InvoiceId, Count(Track.AlbumId) AS Total
FROM Track, InvoiceLine, Invoice, Album
WHERE Album.AlbumId = Track.AlbumId AND
InvoiceLine.InvoiceId = Invoice.InvoiceId AND
InvoiceLine.TrackId = Track.TrackId
Group By Track.AlbumId
Order By Total DESC
Limit 5