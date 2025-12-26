select year, sum(budget) as total_budget from (
  select * from ai_budget_usa
  union all 
  select * from ai_budget_uk
  union all 
  select * from ai_budget_japan
) as ai_budget
where year between 2018 and 2021
group by year
order by total_budget desc
limit 1