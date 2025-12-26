select e1.name, e1.category, sum(e1.tickets_sold) as tickets_sold from events e1
where e1.category in ('music', 'theater')
group by e1.name, e1.category
having sum(e1.tickets_sold) > (
  select avg(e2.tickets_sold) from events e2
  where e2.category = e1.category
)
order by tickets_sold desc