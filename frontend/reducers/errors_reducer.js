import { combineReducers } from 'redux';

import session from './session_errors_reducer';
import bookings from './booking_errors_reducer';

const errorsReducers = combineReducers({
  session,
  bookings
});

export default errorsReducers;