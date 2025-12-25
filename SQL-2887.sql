select (sum(case when year = 2018 then recycling_rate else 0 end) - 
       sum(case when year = 2017 then recycling_rate else 0 end)) /
       sum(case when year = 2017 then recycling_rate else 0 end) as yoy_growth
from recycling_rates where material = 'glass'