import { RECEIVE_HOMEPAGE_LISTINGS } from '../actions/listing_actions';

const homepageReducer = (state = {}, action) => {
  Object.freeze(state);

  if (action.type === RECEIVE_HOMEPAGE_LISTINGS) {
    return Object.assign({}, state, action.homepageListings);
  } else {
    return state;
  }
}

export default homepageReducer;