SELECT I.InvoiceId, I.Total, I.BillingCountry, e.EmployeeId, e.FirstName, e.LastName, c.CustomerId,c.FirstName, c.LastName 
FROM Invoice I, Employee e, Customer c
WHERE I.CustomerId = c.CustomerId AND
 I.BillingCountry = c.Country AND 
 e.EmployeeId = c.SupportRepId;
 