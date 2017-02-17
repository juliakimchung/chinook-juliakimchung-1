SELECT InvoiceLine.InvoiceId, Count(InvoiceLine.InvoiceId)
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId
