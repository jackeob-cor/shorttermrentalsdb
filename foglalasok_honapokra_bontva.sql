SELECT 
    MONTH(reservations.check_in_date) AS Hónap_száma, 
    YEAR(reservations.check_in_date) AS Év, 
    COUNT(reservations.[Hostaway Reservation ID]) AS Foglalások_száma
FROM 
    reservations
WHERE 
    reservations.check_in_date IS NOT NULL
GROUP BY 
    MONTH(reservations.check_in_date), YEAR(reservations.check_in_date)
ORDER BY 
    YEAR(reservations.check_in_date), MONTH(reservations.check_in_date);
