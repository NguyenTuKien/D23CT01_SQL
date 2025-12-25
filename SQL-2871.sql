SELECT 
 cs.sector_name, 
 100 * SUM(CASE WHEN us.union_status = 'Union' THEN wsi.incidents ELSE 0 END) / 
 SUM(wsi.incidents) AS union_share_pct
FROM construction_sectors cs 
JOIN workplace_safety_incidents wsi ON wsi.sector_id = cs.sector_id
JOIN union_status us ON us.id = wsi.union_status_id
WHERE wsi.incident_year IN (2021, 2022)
GROUP BY cs.sector_name
HAVING 
 SUM(CASE WHEN us.union_status = 'Union' THEN wsi.incidents ELSE 0 END) > 0
 AND SUM(CASE WHEN us.union_status = 'Non-Union' THEN wsi.incidents ELSE 0 END) > 0
ORDER BY union_share_pct DESC;