import { combineReducers } from 'redux';

import sessionErrorsRedcuer from './session_errors_reducer';
import bookingErrorsReducer from './booking_errors_reducer';

const errorsReducers = combineReducers({
  session: sessionErrorsRedcuer,
  bookings: bookingErrorsReducer
});

export default errorsReducers;