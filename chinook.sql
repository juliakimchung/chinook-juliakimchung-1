SELECT *
FROM Customer
WHERE Customer.Country = "Brazil";

SELECT c.FirstName, c.LastName, I.InvoiceId, I.InvoiceDate, I.BillingCountry
FROM Invoice I, Customer c
WHERE I.CustomerId = c.CustomerId AND
I.BillingCountry = c.Country  AND
I.BillingCountry = "Brazil";


SELECT *
FROM Employee
WHERE Employee.Title = "Sales Support Agent"


SELECT e.EmployeeId, e.FirstName, e.LastName
FROM Employee e, Invoice I, Customer c
WHERE c.SupportRepId = e.EmployeeId AND
c.CustomerId = I.CustomerId;

SELECT I.InvoiceId, I.Total, I.BillingCountry, e.EmployeeId, e.FirstName, e.LastName, c.CustomerId,c.FirstName, c.LastName 
FROM Invoice I, Employee e, Customer c
WHERE I.CustomerId = c.CustomerId AND
 I.BillingCountry = c.Country AND 
 e.EmployeeId = c.SupportRepId;
 
SELECT *
FROM Invoice
WHERE Invoice.InvoiceDate  between '2009-01-01 00:00:00' and '2011-12-31-11-59';


SELECT InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 11:59:59' , Sum(Total)
FROM Invoice
WHERE Invoice.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 11:59:59' ;

SELECT InvoiceDate between '2010-01-01 00:00:00' and '2010-12-31 11:59:59' ,  Sum(Total)
FROM Invoice
WHERE InvoiceDate between '2010-01-01 00:00:00' and '2011-12-31 11:59:59' ;

SELECT InvoiceDate between '2011-01-01 00:00:00' and '2011-12-31 11:59:59' ,  Sum(Total)
FROM Invoice
WHERE InvoiceDate between '2011-01-01 00:00:00' and '2011-12-31 11:59:59' ;

SELECT InvoiceLine.InvoiceId, Count(InvoiceLine.InvoiceId)
FROM InvoiceLine
WHERE InvoiceLine.InvoiceId = 37;

SELECT InvoiceLine.InvoiceId, Count(InvoiceLine.InvoiceId)
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId

SELECT Track.Name, InvoiceLine.InvoiceLineId, InvoiceLine.InvoiceId, InvoiceLine.Quantity, InvoiceLine.UnitPrice
FROM InvoiceLine, Track
WHERE InvoiceLine.TrackId = Track.TrackId;

SELECT Invoice.BillingCountry, Count(Invoice.BillingCountry)
FROM Invoice
GROUP BY Invoice.BillingCountry

SELECT Playlist.Name, COUNT(PlaylistTrack.TrackId)
FROM Playlist, PlaylistTrack, Track
WHERE Track.TrackId = PlaylistTrack.TrackId  AND
Playlist.PlaylistId = PlaylistTrack.PlaylistId

SELECT Playlist.Name, COUNT (Track.TrackId)
FROM Playlist, Track, PlaylistTrack
WHERE PlaylistTrack.PlaylistId = Playlist.PlaylistId

SELECT t.TrackId, t.Name, a.Title, m.Name, g.Name, t.Composer, t.Milliseconds, t.Bytes, t.UnitPrice
FROM Track t, Album a, MediaType m, Genre g
WHERE t.AlbumId = a.AlbumId AND
m.MediaTypeId = t.MediaTypeId AND
g.GenreId = t.GenreId;

SELECT Invoice.* , InvoiceLine.InvoiceLineId
FROM Invoice, InvoiceLine
WHERE  Invoice.InvoiceId = InvoiceLine.InvoiceId;

SELECT e.EmployeeId, e.FirstName, e.LastName, SUM(I.Total) AS SumTotal
FROM Employee e, Customer c, Invoice I
WHERE c.SupportRepId = e.EmployeeId AND
I.CustomerId = c.CustomerId AND
I.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 11:59:59' ;
GROUP BY EmployeeId IN (SELECT Max(Total)
From Invoice)
 
SELECT e.EmployeeId, e.FirstName, e.LastName, SUM(I.Total) AS SumTotal
FROM Employee e, Customer c, Invoice I
WHERE c.SupportRepId = e.EmployeeId AND
I.CustomerId = c.CustomerId 
GROUP BY e.EmployeeId

SELECT e.FirstName, e.LastName, Count(c.CustomerId) AS 'Customer-Number'
FROM Employee e, Customer c
WHERE e.EmployeeId = c.SupportRepId
Group By e.EmployeeId;

SELECT b.BillingCountry, Sum(b.Total) AS "Total"
FROM Invoice b
Group BY b.BillingCountry IN (SELECT Max(Total)
FROM Invoice)

SELECT p.PlaylistId, s.Name, COUNT(p.TrackId) AS Total
FROM PlaylistTrack p, Track t, Playlist s
WHERE p.TrackId = t.TrackId AND
p.PlaylistId = s.PlaylistId
GROUP BY p.PlaylistId
Order By Total DESC;


SELECT InvoiceLine.TrackId , InvoiceLIne.InvoiceId, Count(InvoiceLine.TrackId) AS 'Sum'
FROM Track, InvoiceLine, Invoice
WHERE InvoiceLine.TrackId = Track.TrackId AND
Invoice.InvoiceDate between '2013-01-01 00:00:00' and '2013-12-31 11:59:59' AND
InvoiceLine.InvoiceId = Invoice.InvoiceId
Group By InvoiceLine.TrackId
Order By Sum DESC

SELECT InvoiceLine.TrackId , Track.Name, InvoiceLIne.InvoiceId, Count(Track.AlbumId) AS Total
FROM Track, InvoiceLine, Invoice, Album
WHERE Album.AlbumId = Track.AlbumId AND
InvoiceLine.InvoiceId = Invoice.InvoiceId AND
InvoiceLine.TrackId = Track.TrackId
Group By Track.AlbumId
Order By Total DESC
Limit 5

SELECT a.ArtistId, a.Name, Count(a.ArtistId) AS Total
FROM Artist a, Album b, Track t, Invoice c, InvoiceLine d
WHERE a.ArtistId = b.ArtistId AND
t.AlbumId = b.AlbumId AND
t.TrackId = d.TrackId
GROUP BY a.ArtistId
ORDER BY Total DESC 
LIMIT 3

SELECT m.Name, Count(m.MediaTypeId) As Total
FROM MediaType m, Track t, InvoiceLine n
WHERE m.MediaTypeId = t.MediaTypeId AND
t.TrackId = n.TrackId
GROUP BY m.MediaTypeId
ORDER BY Total DESC;


