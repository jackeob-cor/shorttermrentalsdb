--Setting up tables:

CREATE TABLE reservations (
    "Hostaway reservation ID" INTEGER,
    "Guest name" TEXT,
    "Check-in date" DATE,
    "Check-out date" DATE,
    "Channel" TEXT,
    "Total price" REAL,
    "Currency" TEXT,
    "Airbnb expected payout amount" REAL,
    "Number of guests" INTEGER,
    "Number of nights" INTEGER,
    "Status" TEXT,
    "Reservation date" TEXT,
    "Listing" TEXT,
    "Channel commission" REAL,
    "Guest location" TEXT,
    "Guest city" TEXT,
    "Guest country" TEXT,
    "Cleaning fee" REAL,
    "Channel Unit ID" INTEGER,
    "Airbnb total paid amount" REAL,
    "Payment status" TEXT,
    "Total paid" REAL,
    "Remaining balance" REAL,
    "ListingMap ID" INTEGER,
    "Listing name" TEXT
);

CREATE TABLE listings (
    Bedrooms_Number INTEGER,
    Street TEXT,
    Bookingcom_Property_Room_Name TEXT,
    Square_Meters REAL,
    Bathroom_Type TEXT,
    Check_In_Time_Start TEXT,
    Price REAL,
    Booking_Window INTEGER,
    Property_Type_Id INTEGER,
    City TEXT,
    Name TEXT,
    Min_Nights INTEGER,
    Cleaning_Fee REAL,
    Zipcode INTEGER,
    Bathrooms_Number INTEGER,
    Number_Of_Units INTEGER,
    Person_Capacity INTEGER,
    Listing_Map_Id INTEGER,
    Address TEXT,
    Cancellation_Policy TEXT,
    Room_Type TEXT,
    Inserted_On TEXT,
    Beds_Number INTEGER
);

CREATE TABLE reviews (
    Reservation_ID INTEGER,
    Origin TEXT,
    Overall_review TEXT,
    Reviewer_Name TEXT,
    Rating INTEGER
);


CREATE TABLE tasks (
    Task_ID INTEGER,
    Status TEXT,
    Reservation_ID INTEGER,
    Listing TEXT,
    Can_start_from TEXT,
    Should_end_by TEXT,
    Cost REAL,
    Cost_currency TEXT,
    Categories TEXT
);



--Importing data:

--.mode csv
--.separator ";"
--.import reservations.csv reservations
--.import listings.csv listings
--.import reviews.csv reviews
--.import tasks.csv tasks
