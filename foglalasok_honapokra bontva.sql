SELECT 
    MONTH(reservations.[Check-in date]) AS [Hónap száma], 
    YEAR(reservations.[Check-in date]) AS [Év], 
    COUNT(reservations.[Hostaway reservation ID]) AS [Foglalások száma]
FROM 
    reservations
WHERE 
    reservations.[Check-in date] IS NOT NULL
GROUP BY 
    MONTH(reservations.[Check-in date]), YEAR(reservations.[Check-in date])
ORDER BY 
    YEAR(reservations.[Check-in date]), MONTH(reservations.[Check-in date]);
