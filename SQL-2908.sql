select territory, 
       round(100.0 * count(case when has_helipad then 1 end) / count(id), 2) as helipad_rate
from hospitals
group by territory 
having count(id) > 0
order by helipad_rate desc
