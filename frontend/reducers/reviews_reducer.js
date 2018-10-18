import {
  RECEIVE_REVIEWS,
  RECEIVE_REVIEW
} from '../actions/review_actions';

import { RECEIVE_LISTING } from '../actions/listing_actions';

const reviewsReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_REVIEWS:
      return Object.assign({}, state, action.reviews);
    case RECEIVE_REVIEW:
      return Object.assign({}, state, { [action.reviews.id]: action.review });
    case RECEIVE_LISTING:
      if (action.listing.reviews) {
        return action.listing.reviews;
      } else {
        return state;
      }     
    default:
      return state;
  }
};

export default reviewsReducer;