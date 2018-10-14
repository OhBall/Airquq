import {
  RECEIVE_BOOKING,
  REMOVE_BOOKINGS
} from '../actions/booking_actions';

const bookingsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_BOOKING:
      return Object.assign({}, state, { [action.booking.id]: action.booking });
    case REMOVE_BOOKINGS:
      let newState = Object.assign({}, state);
      delete newState[action.bookingId];
      return newState;
    default:
      return state;
  }
}

export default bookingsReducer;