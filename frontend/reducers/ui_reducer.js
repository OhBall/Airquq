import { combineReducers } from 'redux';

import modalReducers from './modal_reducer';

export default combineReducers({
  modal: modalReducers
});