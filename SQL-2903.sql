select a.Title, count(distinct e.ExhibitionID) as exhibitions_count from Artworks a
join Exhibitions e on e.ArtworkID = a.ArtworkID
group by a.Title having count(distinct e.ExhibitionID) >= 2
order by exhibitions_count desc