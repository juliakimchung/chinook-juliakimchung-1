SELECT Invoice.BillingCountry, Count(Invoice.BillingCountry)
FROM Invoice
GROUP BY Invoice.BillingCountry
 