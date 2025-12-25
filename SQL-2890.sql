select p.category, count(distinct p.product_id) as distinct_products
from products p
join sales s on p.product_id = s.product_id
join time t on t.time_id = s.time_id
where t.sale_date between '2025-07-01' and '2025-09-30'
group by p.category
having count(distinct p.product_id) >= 2
order by distinct_products desc