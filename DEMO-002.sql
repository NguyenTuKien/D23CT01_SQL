select o.OrderID, c.CustomerName from CUSTOMER c
join SALEORDER o on o.CustID = c.CustID
order by o.OrderID