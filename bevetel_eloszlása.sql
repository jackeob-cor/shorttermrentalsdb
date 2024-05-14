SELECT listings.Street AS Appartman, 
       COUNT(reservations.[Hostaway reservation ID]) AS [Foglalások száma], 
       SUM(
           IIF(reservations.Currency = 'HUF', 
               (reservations.[Total price] / 386), 
               reservations.[Total price]
           )
       ) AS [Teljes bevétel]
FROM reservations 
INNER JOIN listings ON reservations.[ListingMap ID] = listings.[Listing Map Id]
WHERE reservations.Currency IN ('EUR', 'HUF')
GROUP BY listings.Street
HAVING SUM(
           IIF(reservations.Currency = 'HUF', 
               (reservations.[Total price] / 386), 
               reservations.[Total price]
           )
       ) IS NOT NULL;
