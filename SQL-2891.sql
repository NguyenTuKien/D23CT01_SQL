select p.product_name, sum(s.quantity) as total_qty
from products p
join sales s on p.product_id = s.product_id
join time t on t.time_id = s.time_id
where t.sale_date >= (
  select date_sub(max(t.sale_date), interval 30 day)
  from time
)
group by p.product_name
order by total_qty desc
limit 3