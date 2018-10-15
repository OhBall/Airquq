import { 
  RECEIVE_TRIPS,
  REMOVE_TRIP
} from '../actions/booking_actions';

const tripsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_TRIPS:
      return Object.assign({}, state, action.trips);
    case REMOVE_TRIP:
      let newState = Object.assign({}, state);
      delete newState[action.tripId];
      return newState;
    default:
      return state;
  }
}

export default tripsReducer;