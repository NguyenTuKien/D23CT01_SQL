select 
 i.project, 
 i.location, 
 i.amount as amount, 
 (e.environment + e.social + e.governance) / 3 as avg_esg
from impact_investments i 
join esg_factors e on e.company_id = i.company_id 
where i.sector = 'Renewable Energy' and i.amount >= 5000000
and (e.environment + e.social + e.governance) / 3  >= 2.7
order by i.amount desc