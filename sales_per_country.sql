SELECT b.BillingCountry, Sum(b.Total) AS "Total"
FROM Invoice b
Group BY b.BillingCountry;