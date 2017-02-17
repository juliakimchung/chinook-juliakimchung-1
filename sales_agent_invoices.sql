SELECT e.EmployeeId, e.FirstName, e.LastName
FROM Employee e, Invoice I, Customer c
WHERE c.SupportRepId = e.EmployeeId AND
c.CustomerId = I.CustomerId;