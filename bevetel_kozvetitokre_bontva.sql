SELECT reservations.Channel, reservations.Currency, SUM(reservations.[Total price]) AS [SumOfTotal price]
FROM reservations
GROUP BY reservations.Channel, reservations.Currency
HAVING SUM(reservations.[Total price]) IS NOT NULL AND SUM(reservations.[Total price]) <> 0
ORDER BY SUM(reservations.[Total price]) DESC;
