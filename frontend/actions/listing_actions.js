import * as APIUtil from '../util/listing_api_util';

export const RECEIVE_LISTINGS = 'RECEIVE_LISTINGS';
export const RECEIVE_HOMEPAGE_LISTINGS = 'RECEIVE_CITY_LISTINGS';
export const RECEIVE_LISTING = 'RECEIVE_LISTING';

const receiveListings = listings => ({
  type: RECEIVE_LISTINGS,
  listings
});

const receiveHomepageListings = (homepageListings) => ({
  type: RECEIVE_HOMEPAGE_LISTINGS,
  homepageListings
});

const receiveListing = listing => ({
  type: RECEIVE_LISTING,
  listing
});

export const fetchListings = filters => dispatch => (
  APIUtil.fetchListings(filters)
    .then(listings => dispatch(receiveListings(listings)))
);

export const fetchListing = listingId => dispatch => (
  APIUtil.fetchListing(listingId)
    .then(listing => dispatch(receiveListing(listing)))
);

export const fetchHomepageListings = cities => dispatch => (
  APIUtil.fetchHomepageListings(cities)
    .then(homepageListings => dispatch(receiveHomepageListings(homepageListings)))
);

