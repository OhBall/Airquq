import {
  RECEIVE_LISTINGS,
  RECEIVE_LISTING,
  REMOVE_LISTINGS
} from '../actions/listing_actions';

const listingsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_LISTINGS:
      return action.listings;
    // case RECEIVE_HOMEPAGE_LISTINGS:
    //   let newState = Object.assign({}, state);
    //   newState.homepage = action.homepageListings;
    //   return newState;
    case RECEIVE_LISTING:
      return Object.assign({}, state, { [action.listing.id]: action.listing });
    case REMOVE_LISTINGS:
      return {};
    default:
      return state;
  } 
}

export default listingsReducer;