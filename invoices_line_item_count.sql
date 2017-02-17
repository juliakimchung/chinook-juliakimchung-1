SELECT Invoice.* , InvoiceLine.InvoiceLineId
FROM Invoice, InvoiceLine
WHERE  Invoice.InvoiceId = InvoiceLine.InvoiceId;