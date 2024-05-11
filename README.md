# **Homestay - Booking Databse Management System** 🏡📅

![Header](/assets/Header.png)

This Accommodation Booking System is designed to facilitate the booking and management of listings, guests, hosts, bookings, amenities, and reviews. It provides a comprehensive solution for users to find and book accommodations while also allowing hosts to manage their listings and interact with guests. 🛌✨

## **Table of Contents** 📋

- [**Database Schema**](#database-schema) 🗄️
- [**Schema Diagram**](#schema-diagram) ❇️
- [**Tables**](#tables) 📄
- [**Functionalities**](#functionalities) ⚙️
- [**Contributing**](#contributing) 🤝
- [**License**](#license) 📝

## **Database Schema** 🗄️

The database schema includes tables to store information about listings, guests, hosts, bookings, amenities, and reviews. Relationships are established between entities to maintain data integrity. 🛡️

## **Schema Diagram**
![Header](/assets/schema.png)

## **Tables** 📄

1. `Listings`: Stores information about accommodation listings including listing ID, host ID, title, description, address, city, state, country, latitude, longitude, price, maximum guests, beds, baths, amenities, rating, and reviews.

2. `Guests`: Contains details about guests including guest ID, guest name, email, password, phone number, profile picture, date joined, total bookings, ratings, and reviews.

3. `GuestReviews`: Stores reviews given by guests for hosts including host ID, guest ID, rating, and review.

4. `Hosts`: Stores information about hosts including host ID, host name, email, password, phone number, profile picture, date joined, total listings, total bookings, ratings, and reviews.

5. `Bookings`: Contains details about bookings including booking ID, guest ID, listing ID, host ID, check-in date, check-out date, total price, number of guests, confirmation status, and reviews/ratings by guest, host, and for the listing.

6. `Amenities`: Stores information about amenities available in listings including amenity ID and name.

7. `ListingAmenities`: Associates listings with amenities using listing ID and amenity ID.

## **Functionalities** ⚙️

- `Listing management`: Hosts can create, update, and manage their accommodation listings.
- `Booking management`: Guests can search for listings, make bookings, and manage their bookings.
- `Review system`: Both guests and hosts can leave reviews and ratings for each other and for listings.
- `Amenities management`: Hosts can specify amenities available in their listings, enhancing the booking experience for guests.

## **Contributing** 🤝

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## **License** 📝

This project is licensed under the [MIT License](LICENSE).
