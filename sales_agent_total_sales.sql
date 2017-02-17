SELECT e.EmployeeId, e.FirstName, e.LastName, SUM(I.Total)
FROM Employee e, Customer c, Invoice I
WHERE c.SupportRepId = e.EmployeeId AND
I.CustomerId = c.CustomerId
GROUP BY EmployeeId