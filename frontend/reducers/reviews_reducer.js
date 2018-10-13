import {
  RECEIVE_REVIEWS,
  RECEIVE_REVIEW
} from '../actions/review_actions';

import { RECEIVE_LISTING } from '../actions/listing_actions';

const reviewsReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_REVIEWS:
      // maybe do not need this?
      return Object.assign({}, state, action.reviews);
    case RECEIVE_REVIEW:
      return Object.assign({}, state, { [action.reviews.id]: action.review });
    case RECEIVE_LISTING:
      // not sure!
      // return Object.assign({}, state, action.listing.reviews);
      // debugger
      return action.listing.reviews;
    default:
      return state;
  }
};

export default reviewsReducer;