select t.Name as type_name,
       r.Name as model_name,
       r.Release_Date as release_date
from Vehicle_Types t
join Vehicle_Releases r on r.Vehicle_Type_Id = t.id
join (
  select Vehicle_Type_Id, max(Release_Date) as lastest 
  from Vehicle_Releases
  group by Vehicle_Type_Id
) as l on t.id = l.Vehicle_Type_Id
and r.Release_Date = l.lastest
order by t.Name, r.Name
