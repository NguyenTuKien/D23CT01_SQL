WITH dept_stats AS (
 SELECT
 d.company_id,
 d.dept_id,
 COUNT(*) AS dept_size,
 SUM(CASE WHEN e.gender = 'Female' THEN 1 ELSE 0 END) AS female_cnt
 FROM departments d
 JOIN employees e ON e.dept_id = d.dept_id
 GROUP BY d.company_id, d.dept_id
 HAVING COUNT(*) >= 2
),
company_stats AS (
 SELECT
 c.company_id,
 c.company_name,
 (SUM(ds.dept_size) * 1.0) / COUNT(*) AS avg_dept_size,
 (SUM(ds.female_cnt) * 100.0) / SUM(ds.dept_size) AS female_percentage
 FROM companies c
 JOIN dept_stats ds ON ds.company_id = c.company_id
 GROUP BY c.company_id, c.company_name
 HAVING COUNT(*) >= 2
)
SELECT
 t.company_name,
 ROUND(t.avg_dept_size, 2) AS avg_dept_size,
 ROUND(t.female_percentage, 2) AS female_percentage
FROM (
 SELECT *
 FROM company_stats
 ORDER BY avg_dept_size DESC, female_percentage DESC, company_id ASC
 LIMIT 3
) AS t
ORDER BY t.female_percentage DESC, t.company_id ASC;