select c.company_name as company_name, count(distinct d.dept_id) as dept_count 
from companies as c 
join departments as d on d.company_id = c.company_id 
join employees as e on e.dept_id = d.dept_id 
group by c.company_name