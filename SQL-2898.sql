select name, tickets_sold from events 
where category = 'music'
and tickets_sold > (
  select avg(tickets_sold) from events
  where category = 'music' 
)
order by tickets_sold desc