SELECT InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 11:59:59' , Sum(Total)
FROM Invoice
WHERE Invoice.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 11:59:59' ;
 
SELECT InvoiceDate between '2010-01-01 00:00:00' and '2010-12-31 11:59:59' ,  Sum(Total)
FROM Invoice
WHERE Invoice.InvoiceDate between '2010-01-01 00:00:00' and '2011-12-31 11:59:59' ;

SELECT InvoiceDate between '2011-01-01 00:00:00' and '2011-12-31 11:59:59' ,  Sum(Total)
FROM Invoice
WHERE Invoice.InvoiceDate between '2011-01-01 00:00:00' and '2011-12-31 11:59:59' ;

