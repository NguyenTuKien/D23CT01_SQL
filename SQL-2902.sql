select g.company_id, count(distinct g.id) as distinct_gene_count
from research r 
join gene g on g.research_id = r.id
where r.start_date >= '2024-01-01'
group by g.company_id
order by distinct_gene_count desc, g.company_id
limit 1