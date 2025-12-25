select 
  ve.name as vessel_name,
  vo.id as voyage_id, 
  vo.cargo_weight,
  ve.max_cargo_weight
from vessels ve 
join voyages vo on ve.id = vo.vessel_id 
where ve.max_cargo_weight < vo.cargo_weight
