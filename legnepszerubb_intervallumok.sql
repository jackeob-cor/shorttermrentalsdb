SELECT DATEDIFF(day, [check_in_date], [check_out_date]) AS [Éjszakák száma], COUNT(reservations.[Hostaway reservation ID]) AS [Foglalások száma]
FROM reservations
WHERE [check_out_date] IS NOT NULL AND [check_in_date] IS NOT NULL
GROUP BY DATEDIFF(day, [check_in_date], [check_out_date])
ORDER BY COUNT(reservations.[Hostaway reservation ID]) DESC;
