SELECT 
    MONTH(reservations.[check_in_date]) AS [Hónap száma], 
    YEAR(reservations.[check_in_date]) AS [Év], 
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
    reservations.[check_in_date] IS NOT NULL
GROUP BY 
    MONTH(reservations.[check_in_date]), YEAR(reservations.[check_in_date])
ORDER BY 
    YEAR(reservations.[check_in_date]), MONTH(reservations.[check_in_date]);
