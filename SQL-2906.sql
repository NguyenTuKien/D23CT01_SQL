select name, sum(subscription_fee) as total_fee
from (
  select name, subscription_fee, date from mobile_subscribers
  where date between '2025-01-01' and '2025-03-31'
  union all 
  select name, subscription_fee, date from broadband_subscribers
  where date between '2025-01-01' and '2025-03-31'
) as t
group by name 
order by total_fee desc
limit 3
