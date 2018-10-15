import * as APIUtil from '../util/booking_api_util';

export const RECEIVE_TRIPS = 'RECEIVE_TRIPS';
export const RECEIVE_BOOKING = 'RECEIVE_BOOKING';
export const REMOVE_TRIP = 'REMOVE_TRIP';

export const RECEIVE_BOOKING_ERRORS = 'RECEIVE_BOOKING_ERRORS';
export const CLEAR_BOOKING_ERRORS = 'CLEAR_BOOKING_ERRORS';

const receiveBooking = booking => ({
  type: RECEIVE_BOOKING,
  booking
});

const removeTrip = tripId => ({
  type: REMOVE_TRIP,
  tripId
});

// for errors

export const receiveBookingErrors = errors => {
  return {
    type: RECEIVE_BOOKING_ERRORS,
    errors
  };
};

export const clearBookingErrors = () => {
  return {
    type: CLEAR_BOOKING_ERRORS
  };
};

export const fetchBooking = bookingId => dispatch => (
  APIUtil.fetchBooking(bookingId)
    .then(booking => dispatch(receiveBooking(booking)))
)

export const createBooking = booking => dispatch => (
  APIUtil.createBooking(booking)
    .then(booking => dispatch(receiveBooking(booking)),
          err => dispatch(receiveBookingErrors(err.responseJSON)))
)

// For trips index page

const receiveTrips = trips => ({
  type: RECEIVE_TRIPS,
  trips
});

export const fetchTrips = () => dispatch => (
  APIUtil.fetchTrips()
    .then(trips => dispatch(receiveTrips(trips)))
)

export const updateBooking = booking => dispatch => (
  APIUtil.updateBooking(booking)
    .then(booking => dispatch(receiveBooking(booking)),
      err => dispatch(receiveBookingErrors(err.responseJSON)))
)

export const deleteTrip = tripId => dispatch => {
  return (APIUtil.deleteBooking(tripId)
    .then(() => dispatch(removeTrip(tripId))))
}