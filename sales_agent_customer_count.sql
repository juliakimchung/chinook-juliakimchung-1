SELECT e.FirstName, e.LastName, Count(c.CustomerId) AS 'Customer-Number'
FROM Employee e, Customer c
WHERE e.EmployeeId = c.SupportRepId
Group By e.EmployeeId;