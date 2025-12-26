UPDATE Payment pm
JOIN (
    SELECT o.OrderID
    FROM OrderItem o
    JOIN Product pr ON o.PID = pr.PID
    GROUP BY o.OrderID
    HAVING SUM(pr.Price * o.Qty) >= 500
) t ON pm.OrderID = t.OrderID
SET pm.Status = 'PAID', pm.PaidAt = '2025-01-01';