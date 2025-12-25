select ve.name, sum(vo.cargo_weight) as total_cargo_arctic
from vessels ve 
join voyages vo on ve.id = vo.vessel_id 
where vo.region = 'Arctic'
group by ve.name
having sum(vo.cargo_weight) > 10000
order by total_cargo_arctic desc