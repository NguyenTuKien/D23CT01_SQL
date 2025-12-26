select it.initiative_name, count(distinct ip.student_id) as students_impacted from initiatives it 
join impact ip on ip.initiative_id = it.initiative_id
where it.initiative_date between '2024-01-01' and '2024-12-31'
group by it.initiative_name 
having count(ip.student_id) >= 2
order by students_impacted desc
