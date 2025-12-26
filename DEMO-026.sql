select s.OrderID, c.CustomerName, COUNT(o.PID) AS TotalLines
from SaleOrder s 
join Customer c on c.CustID = s.CustID 
join OrderItem o on o.OrderID = s.OrderID
group by s.OrderID, c.CustomerName
having count(o.PID) >= 2
order by s.OrderId