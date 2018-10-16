import { combineReducers } from 'redux';
import users from './users_reducer';
import listings from './listings_reducer';
import bookings from './bookings_reducer';
import reviews from './reviews_reducer';
import trips from './trips_reducer';
import homepage from './homepage_reducer';

const entitiesReducer = combineReducers({
  users,
  listings,
  bookings,
  reviews,
  trips,
  homepage
})

export default entitiesReducer;