import { OPEN_MODAL, CLOSE_MODAL, OPEN_MODAL_WITH_LISTING } from '../actions/modal_actions';

export default function modalReducer(state = null, action) {
  switch (action.type) {
    case OPEN_MODAL:
      return action.modal;
    case CLOSE_MODAL:
      return null;
    case OPEN_MODAL_WITH_LISTING:
      let newState = {};
      newState['modal'] = action.modal;
      newState['listing'] = action.listing;
      return newState;
    default:
      return state;
  }
}