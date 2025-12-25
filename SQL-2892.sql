select p.vegan, sum(s.quantity) as total_qty
from products p
join sales s on p.product_id = s.product_id
join time t on t.time_id = s.time_id
where t.sale_date between '2025-01-01' and '2025-06-30'
  and p.category in ('Hair Care', 'Body Care')
group by p.vegan
order by total_qty desc
