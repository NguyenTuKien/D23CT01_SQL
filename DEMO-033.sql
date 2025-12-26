delete from CustomerArchive 
where CustID in (
  select c.CustID from Customer c 
  left join SaleOrder s on c.CustID = s.CustID
  group by c.CustID 
  having sum(case when s.OrderDate < '2024-01-01 ' then s.TotalAmount else 0 end) < 500
  and count(case when s.OrderDate >= '2024-01-01' then 1 end) = 0
)