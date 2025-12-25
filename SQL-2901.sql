select r.title, count(g.id) as gene_count
from research r 
join gene g on g.research_id = r.id
group by r.title
order by gene_count desc, r.title
limit 3