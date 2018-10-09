import { combineReducers } from 'redux';

import entitiesReducer from './entities_reducer';
import sessionReducers from './session_reducer';
import errorsReducer from './errors_reducer';
import uiReducer from './ui_reducer';

const rootReducer = combineReducers({
  entities: entitiesReducer,
  session: sessionReducers,
  errors: errorsReducer,
  ui: uiReducer
});

export default rootReducer;
