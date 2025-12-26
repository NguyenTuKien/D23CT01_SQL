select it.community_type, count(distinct ip.student_id) as students_impacted from initiatives it 
join impact ip on ip.initiative_id = it.initiative_id
where it.initiative_date between '2025-01-01' and '2025-03-31'
group by it.community_type 
order by students_impacted desc
