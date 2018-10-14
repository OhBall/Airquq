export const fetchListings = () => (
  $.ajax({
    method: 'GET',
    url: '/api/listings'
  })
);

export const fetchListing = listingId => (
  $.ajax({
    method: 'GET',
    url: `/api/listings/${listingId}`
  })
);

export const fetchHomepageListings = cities => (
  $.ajax({
    method: 'GET',
    url: '/api/listings',
    data: { city: cities }
  })
);