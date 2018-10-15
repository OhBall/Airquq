import * as APIUtil from '../util/booking_api_util';

export const RECEIVE_TRIPS = 'RECEIVE_TRIPS';
export const RECEIVE_BOOKING = 'RECEIVE_BOOKING';
export const REMOVE_BOOKINGS = 'REMOVE_BOOKINGS';

export const RECEIVE_BOOKING_ERRORS = 'RECEIVE_BOOKING_ERRORS';
export const CLEAR_BOOKING_ERRORS = 'CLEAR_BOOKING_ERRORS';

const receiveBooking = booking => ({
  type: RECEIVE_BOOKING,
  booking
});

const removeBooking = bookingId => ({
  type: REMOVE_BOOKINGS,
  bookingId
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

// export const fetchBookings = () => dispatch => (
//   APIUtil.fetchBookings()
//     .then(bookings => dispatch(receiveBookings(bookings)))
// )

export const fetchBooking = bookingId => dispatch => (
  APIUtil.fetchBooking(bookingId)
    .then(booking => dispatch(receiveBooking(booking)))
)

export const createBooking = booking => dispatch => (
  APIUtil.createBooking(booking)
    .then(booking => dispatch(receiveBooking(booking)),
          err => dispatch(receiveBookingErrors(err.responseJSON)))
)

export const updateBooking = booking => dispatch => (
  APIUtil.updateBooking(booking)
    .then(booking => dispatch(receiveBooking(booking)),
      err => dispatch(receiveBookingErrors(err.responseJSON)))
)

export const deleteBooking = bookingId => dispatch => (
  APIUtil.deleteBooking(bookingId)
    .then(post => dispatch(removeBooking(bookingId)))
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

