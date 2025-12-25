select 
 i.company_id, 
 sum(i.amount) as total_amount_energy,
 (e.environment + e.social + e.governance) as total_esg
from impact_investments i 
join esg_factors e on e.company_id = i.company_id 
where i.sector like '%Energy%'
and (e.environment + e.social + e.governance) > 7.5
group by i.company_id, e.environment, e.social, e.governance
having sum(i.amount) > 10000000
order by total_amount_energy desc