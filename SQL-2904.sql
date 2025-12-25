SELECT 
    a1.Title AS Title1,
    a2.Title AS Title2,
    COUNT(DISTINCT e1.ExhibitionID) AS co_exhibit_count
FROM Exhibitions e1
JOIN Exhibitions e2 ON e1.ExhibitionID = e2.ExhibitionID
JOIN Artworks a1 ON e1.ArtworkID = a1.ArtworkID
JOIN Artworks a2 ON e2.ArtworkID = a2.ArtworkID
WHERE e1.ArtworkID < e2.ArtworkID
GROUP BY a1.ArtworkID, a2.ArtworkID, a1.Title, a2.Title
ORDER BY co_exhibit_count DESC, Title1, Title2;