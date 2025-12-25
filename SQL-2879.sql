select 
  ve.name,
  count(distinct vo.region) as distinct_regions, 
  sum(vo.cargo_weight) as total_cargo
from vessels ve 
join voyages vo on ve.id = vo.vessel_id 
group by ve.name
having count(distinct vo.region) >= 2
and sum(vo.cargo_weight) > 0 
order by distinct_regions desc, total_cargo desc, name desc