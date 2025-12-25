select material
from recycling_rates 
group by material
having sum(case when year = 2018 then recycling_rate end)
> sum(case when year = 2017 then recycling_rate end) 
and sum(case when year = 2019 then recycling_rate end) 
> sum(case when year = 2018 then recycling_rate end)
order by material