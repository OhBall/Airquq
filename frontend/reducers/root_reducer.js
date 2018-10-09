import { combineReducers } from 'redux';

import entitiesReducer from './entities_reducer';
import sessionReducers from './session_reducer';
import errorsReducer from './errors_reducer';

const rootReducer = combineReducers({
  entities: entitiesReducer,
  session: sessionReducers,
  errors: errorsReducer
});

export default rootReducer;
