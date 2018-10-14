import { RECEIVE_TRIPS } from '../actions/booking_actions';

const tripsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_TRIPS:
      return Object.assign({}, state, action.trips);
    default:
      return state;
  }
}

export default tripsReducer;