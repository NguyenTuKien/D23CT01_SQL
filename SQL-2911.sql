select country, sum(budget) as total_budget from (
  select * from ai_budget_usa
  union all 
  select * from ai_budget_uk
  union all 
  select * from ai_budget_japan
) as ai_budget
where year >= 2019
group by country
order by total_budget desc