SELECT InvoiceLine.TrackId , InvoiceLIne.InvoiceId, Count(InvoiceLine.TrackId) AS 'Sum'
FROM Track, InvoiceLine, Invoice
WHERE InvoiceLine.TrackId = Track.TrackId AND
Invoice.InvoiceDate between '2013-01-01 00:00:00' and '2013-12-31 11:59:59' AND
InvoiceLine.InvoiceId = Invoice.InvoiceId
Group By InvoiceLine.TrackId
Order By Sum DESC