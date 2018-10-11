import * as APIUtil from '../util/booking_api_util';

export const RECEIVE_BOOKINGS = 'RECEIVE_BOOKINGS';
export const RECEIVE_BOOKING = 'RECEIVE_BOOKING';
export const REMOVE_BOOKINGS = 'REMOVE_BOOKINGS';

const receiveBookings = bookings => ({
  type: RECEIVE_BOOKINGS,
  bookings
});

const receiveBooking = booking => ({
  type: RECEIVE_BOOKING,
  booking
});

const removeBooking = bookingId => ({
  type: REMOVE_BOOKINGS,
  bookingId
});

export const fetchBookings = () => dispatch => (
  APIUtil.fetchBookings()
    .then(bookings => dispatch(receiveBookings(bookings)))
)

export const fetchBooking = bookingId => dispatch => (
  APIUtil.fetchBooking(bookingId)
    .then(booking => dispatch(receiveBooking(booking)))
)

export const createBooking = (listingId, booking) => dispatch => (
  APIUtil.createBooking(listingId, booking)
    .then(booking => dispatch(receiveBooking(booking)))
)

export const updateBooking = booking => dispatch => (
  APIUtil.updateBooking(booking)
    .then(booking => dispatch(receiveBooking(booking)))
)

export const deleteBooking = bookingId => dispatch => (
  APIUtil.deleteBooking(bookingId)
    .then(post => dispatch(removeBooking(bookingId)))
)


