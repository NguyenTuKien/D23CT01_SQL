select t.Name as type_name,
       max(r.Horsepower) as max_hp
from Vehicle_Types t
join Vehicle_Releases r on r.Vehicle_Type_Id = t.id 
where r.Release_Date between '2021-01-01' and '2022-12-31'
group by t.Name
order by max_hp desc
