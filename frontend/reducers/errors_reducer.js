import { combineReducers } from 'redux';

import sessionErrorsRedcuer from './session_errors_reducer';

const errorsReducers = combineReducers({
  session: sessionErrorsRedcuer
});

export default errorsReducers;