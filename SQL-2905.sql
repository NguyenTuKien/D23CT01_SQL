select service_type, sum(subscription_fee) as total_revenue
from (
  select 'mobile' as service_type, subscription_fee, date from mobile_subscribers
  where date between '2025-03-01' and '2025-03-31'
  union all 
  select 'broadband' as service_type, subscription_fee, date from broadband_subscribers
  where date between '2025-03-01' and '2025-03-31'
) as t
group by service_type 
order by total_revenue desc
