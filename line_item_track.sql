SELECT Track.Name, InvoiceLine.InvoiceLineId, InvoiceLine.InvoiceId, InvoiceLine.Quantity, InvoiceLine.UnitPrice
FROM InvoiceLine, Track
WHERE InvoiceLine.TrackId = Track.TrackId;