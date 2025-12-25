select r.Origin_Country as origin_country,
       count(r.id) as model_count
from Vehicle_Types t
join Vehicle_Releases r on r.Vehicle_Type_Id = t.id 
where r.Release_Date > '2018-12-31'
and r.Horsepower between 150 and 350
group by r.Origin_Country
order by model_count desc
