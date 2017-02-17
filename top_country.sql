SELECT b.BillingCountry, Sum(b.Total) AS "Total"
FROM Invoice b
Group BY b.BillingCountry IN (SELECT Max(Total)
FROM Invoice)