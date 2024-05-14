SELECT listings.Street AS Appartman, AVG(reviews.Rating) AS Értékelés
FROM (reservations
INNER JOIN reviews ON reservations.[Hostaway reservation ID] = reviews.[Reservation_ID])
INNER JOIN listings ON reservations.[ListingMap ID] = listings.[Listing_Map_Id]
GROUP BY listings.Street
HAVING AVG(reviews.Rating) IS NOT NULL
ORDER BY AVG(reviews.Rating) DESC;
