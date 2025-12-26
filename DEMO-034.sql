DELETE FROM LoyaltyHistory
WHERE HistoryID IN (
    SELECT HistoryID FROM (
        SELECT 
            h.HistoryID,
            ROW_NUMBER() OVER (
                PARTITION BY h.CustID, h.Reason, h.PointsChange 
                ORDER BY h.ChangeDate DESC, h.HistoryID DESC
            ) as rn,
            COALESCE((SELECT SUM(TotalAmount) FROM SaleOrder s WHERE s.CustID = h.CustID), 0) as TotalSpent
        FROM LoyaltyHistory h
        WHERE h.Reason = 'WELCOME_BONUS'
    ) AS Candidates
    WHERE Candidates.rn > 1 
      AND Candidates.TotalSpent < 1000
);