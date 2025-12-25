select category, count(distinct id) as event_count 
from events 
where tickets_sold between 100 and 250
group by category
order by event_count desc