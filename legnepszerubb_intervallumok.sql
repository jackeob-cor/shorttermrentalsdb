SELECT DATEDIFF(day, [Check-in date], [Check-out date]) AS [Éjszakák száma], COUNT(reservations.[Hostaway reservation ID]) AS [Foglalások száma]
FROM reservations
WHERE [Check-out date] IS NOT NULL AND [Check-in date] IS NOT NULL
GROUP BY DATEDIFF(day, [Check-in date], [Check-out date])
ORDER BY COUNT(reservations.[Hostaway reservation ID]) DESC;
