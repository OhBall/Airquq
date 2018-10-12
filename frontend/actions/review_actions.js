import * as APIUtil from '../util/review_api_util';

const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
const RECEIVE_REVIEW = 'RECEIVE_REVIEW';

const receiveReviews = reviews => ({
  type: RECEIVE_REVIEWS,
  reivews
});

const receiveReview = review => ({
  type: RECEIVE_REVIEW,
  reivews
});

export const fetchReviews = () => dispatch => (
  APIUtil.fetchReviews() 
    .then(reviews => dispatch(receiveReviews(reviews)))
);

export const createReview = review => dispatch => (
  APIUtil.createReview(review)
    .then(reivew => dispatch(receiveReview(review)))
);

