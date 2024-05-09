CREATE TABLE Listings (
    ListingID INT PRIMARY KEY AUTO_INCREMENT,
    HostID INT,
    Title VARCHAR(100) NOT NULL,
    Description TEXT,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Latitude DECIMAL(10, 8),
    Longitude DECIMAL(11, 8),
    Price DECIMAL(10, 2) NOT NULL,
    MaxGuests INT NOT NULL,
    Beds INT NOT NULL,
    Baths INT NOT NULL, 
    Amenities VARCHAR(255) NOT NULL,
    Rating INT NOT NULL,
    Reviews INT NOT NULL,
    
    FOREIGN KEY (HostID) REFERENCES Hosts(HostID)
);

CREATE TABLE Guests (
    GuestID INT PRIMARY KEY AUTO_INCREMENT,
    GuestName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    ProfilePicture VARCHAR(255),
    DateJoined DATE NOT NULL,
    TotalBookings INT NOT NULL,
    Ratings INT NOT NULL,
    Reviews INT NOT NULL,
);

CREATE TABLE GuestReviews (
    HostID INT PRIMARY KEY NOT NULL,
    GuestID INT PRIMARY KEY NOT NULL,
    Rating INT NOT NULL,
    Review TEXT

    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID)
    FOREIGN KEY (HostID) REFERENCES Hosts(HostID)
);

CREATE TABLE Hosts (
    HostID INT PRIMARY KEY NOT NULL,
    HostName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    ProfilePicture VARCHAR(255),
    DateJoined DATE NOT NULL,
    TotalListings INT NOT NULL,
    TotalBookings INT NOT NULL,
    Ratings INT NOT NULL,
    Reviews INT NOT NULL,
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    GuestID INT NOT NULL,
    ListingID INT NOT NULL,
    HostID INT NOT NULL,
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    TotalPrice DECIMAL(10, 2) NOT NULL,
    NumGuests INT NOT NULL,
    IsConfirmed BOOLEAN DEFAULT FALSE,
    Rating INT DEFAULT 0,
    ListingReview TEXT,
    ListingRating INT,
    HostReview TEXT,
    HostRating INT,
    GuestReview TEXT,
    GuestRating INT
    
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID),
    FOREIGN KEY (ListingID) REFERENCES Listings(ListingID)
    FOREIGN KEY (HostID) REFERENCES Hosts(HostID)
);

CREATE TABLE Ownership (
    ListingID INT PRIMARY KEY NOT NULL,
    HostID INT PRIMARY KEY NOT NULL,

    FOREIGN KEY (ListingID) REFERENCES Listings(ListingID)
    FOREIGN KEY (HostID) REFERENCES Hosts(HostID)
);

CREATE TABLE Amenities (
    AmenityID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE ListingAmenities (
    ListingID INT,
    AmenityID INT,
    
    FOREIGN KEY (ListingID) REFERENCES Listings(ListingID),
    FOREIGN KEY (AmenityID) REFERENCES Amenities(AmenityID)
);
