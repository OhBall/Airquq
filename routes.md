# Backend

## HTML

- `Get/ StaticPagesController#root`

## API Endpoints
### `users`
- `POST /api/users` - sign up
- `GET /api/user/:id` - returns the user information for user booking history feature

### `session`
- `POST /api/session` - log in
- `DELETE /api/session` - log out

### `listings`
- `GET /api/listings` - returns relavant listings
- `GET /api/listing/:id` - returns listing

### `bookings`
- `GET /api/bookings` - returns relavant bookings (filtered by user)
- `POST /api/bookings` - book a listing

### `Reviews`
- `GET /api/listings/reviews` - returns relavant reviews (filtered by listing)
- `POST /api/listings/reviews` - write reviews for a listing

# Frontend

## Routes
- `/` - Homepage
- `/login` - Log in form
- `/signup` - Sign up form
- `/listings` - Listings index page
- `/listings/:litingId` - Listings show page
- `/bookings/` - Bookings index page for a specific user

## Components

### Component Hierarchy
- `Root`
  - `App`
    - `NavBar`
    - (main components goes here)
    - `Footer`

### Main Components
- Session
  - `SessionForm` - for log in & sign up
- Listings 
  - `ListingIndex`
    - `ListingIndexItem`
  - `ListingShow`
    - `BookingForm`
    - `ReviewForm`
    - `ReviewIndex`
      - `ReviewIndexItem`
- Bookings
  - `BookingIndex`
    - `BookingIndexItem`
