select abs(sum(case when year = 2017 then recycling_rate else 0 end)
  - sum(case when year = 2019 then recycling_rate else 0 end)) as rate_difference
from recycling_rates
where material = 'paper'
