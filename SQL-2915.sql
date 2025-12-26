select p.country, count(case when pt.recycled_materials then 1 end) as recycled_products_count from Products p
join SupplyChainViolations scv on scv.country = p.country 
join ProductTransparency pt on pt.product_id = p.product_id
group by p.country having sum(scv.num_violations) > 0 and count(case when pt.recycled_materials then 1 end) > 0
order by recycled_products_count desc