import {
  RECEIVE_BOOKING_ERRORS,
  CLEAR_BOOKING_ERRORS
} from '../actions/booking_actions';

import { CLOSE_MODAL } from '../actions/modal_actions';

const bookingErrorsReducer = (state = [], action) => {
  Object.freeze(state);
  
  switch (action.type) {
    case RECEIVE_BOOKING_ERRORS:
      return action.errors;
    case CLEAR_BOOKING_ERRORS:
      return [];
    case CLOSE_MODAL:
      return [];
    default:
      return state;
  }
}

export default bookingErrorsReducer;