# Airquq

[Airquq Live](https://airquq.herokuapp.com/)

![](airquq_logo.png)

Airquq is a full-stack, single-page application inspired by Airbnb. It utilizes a Ruby on Rails backend with a PostgreSQL database and a React and Redux frontend. It features four cities with comfortable homes that users can view, book and read reviews. Users can search for homes by location and apply price filter to find the best matches for them.

## Features

- Maintain user authenticiation security from frontend to backend
- Display all homes in an organized layout
- Users can search homes by location, view homes on google map using GoogleMap API, and filter results by price range
- Users can view homes' detail information and choose a date range to book
- Users can see all their trips(bookings)

### Homepage

The splash page features a search bar that is built using Google Place Autocomplete. The search bar component also utilizes Google Geocoding API to turn location into geography coordinates.

![](homepage.jpg)

### Search Result page

This page is for users to search and views listings based on map locations and filter search results by price range.

The backend is only queried for listings within the current map bounds. Any user movement of the map will query the backend based on the updated map bounds.

![](search.gif)

### Listing index page

Any time user clicks on the logo on the left top corner, user will be directed to the listing index page which shows recommendations for travel destination and homes in those cities. There are quick links to go to the cities Airquq have listings in.

![](index.jpg)

### Listing Show Page

This is the page for users to view all the detailed information of a Airquq listed home.

![](listing_show_1.jpg)

This section shows availability of recent 2 months and the neighborhood around the home on google map.

![](listing_show_2.jpg)

This section shows all reviews for a particular home, and the average rating for each category in stars format. 

The review texts are generated using Faker gem (from  RickAndMorty section!)

![](listing_show_3.jpg)

### Trips page

This page shows all of the current user's trips(bookings), user can cancel their trips on this page.

![](trips2.gif)


## Technologies uesd
- Javascript
- Ruby on Rails
- PostgreSQL
- HTML
- CSS

## Possible future features
- Messages and chat bot