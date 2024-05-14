SELECT 
    MONTH(reservations.[Check-in date]) AS [Hónap száma], 
    YEAR(reservations.[Check-in date]) AS [Év], 
    SUM(
        IIF(reservations.Currency = 'HUF', 
            (reservations.[Total price] / 386), 
            reservations.[Total price]
        )
    ) AS [Összbevétel EUR-ban],
    SUM(
        IIF(reservations.Currency = 'HUF', 
            reservations.[Total price], 
            (reservations.[Total price] * 386)
        )
    ) AS [Összbevétel HUF-ban]
FROM 
    reservations
WHERE 
    reservations.[Check-in date] IS NOT NULL
GROUP BY 
    MONTH(reservations.[Check-in date]), YEAR(reservations.[Check-in date])
ORDER BY 
    YEAR(reservations.[Check-in date]), MONTH(reservations.[Check-in date]);
