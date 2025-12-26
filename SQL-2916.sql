select 
  p.country, 
  round(100.0 * count(case when pt.recycled_materials then 1 end) / count(distinct pt.product_id), 2) as recycle_rate 
from Products p
join SupplyChainViolations scv on scv.country = p.country 
join ProductTransparency pt on pt.product_id = p.product_id
group by p.country having count(pt.product_id) > 1
order by recycle_rate desc