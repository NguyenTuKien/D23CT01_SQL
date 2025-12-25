select t.Name as type_name,
       avg(r.Horsepower) as avg_hp
from Vehicle_Types t
join Vehicle_Releases r on r.Vehicle_Type_Id = t.id
where t.Name in ('SUV', 'Truck')
and r.Release_Date >= '2020-01-01'
and r.Origin_Country in ('USA', 'Germany')
group by t.Name 
order by avg_hp desc