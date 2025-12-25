select 
 i.location, 
 sum(i.amount) as total_amount
from impact_investments i 
join esg_factors e on e.company_id = i.company_id 
where e.environment > 2 
  and e.social > 2
  and e.governance > 2
group by i.location
  having sum(i.amount) >= 10000000
order by total_amount desc