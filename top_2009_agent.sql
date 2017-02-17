SELECT e.EmployeeId, e.FirstName, e.LastName, SUM(I.Total) AS SumTotal
FROM Employee e, Customer c, Invoice I
WHERE c.SupportRepId = e.EmployeeId AND
I.CustomerId = c.CustomerId AND
I.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 11:59:59' ;
GROUP BY EmployeeId IN (SELECT Max(Total)
From Invoice)
 