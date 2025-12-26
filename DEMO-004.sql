select c.CustomerName, sum(case when p.Status = 'PAID' then s.Total else 0 end) as PaidTotal from CUSTOMER c
left join SALEORDER s on s.CustID = c.CustID 
left join PAYMENT p on p.OrderID = s.OrderID 
group by c.CustomerName 
order by c.CustomerName 
