select 
  i.project, 
  i.sector,
  round(i.amount / (e.environment + e.social + e.governance), 2) as amount_per_esg
from impact_investments i 
join esg_factors e on e.company_id = i.company_id 
where i.amount / (e.environment + e.social + e.governance) >= 2000000
order by amount_per_esg desc