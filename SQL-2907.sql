select territory, 
       sum(case when type = 'hospitals' then num_beds else 0 end) as total_hospital_beds,
       sum(case when type = 'clinics' then num_beds else 0 end) as total_clinic_beds,
       sum(num_beds) as total_beds
from (
  select territory, num_beds, 'hospitals' as type from hospitals 
  union all 
  select territory, num_beds, 'clinics' as type from clinics  
) as ut 
group by territory
order by total_beds desc
