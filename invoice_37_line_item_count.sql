SELECT InvoiceLine.InvoiceId, Count(InvoiceLine.InvoiceId)
FROM InvoiceLine
WHERE InvoiceLine.InvoiceId = 37;