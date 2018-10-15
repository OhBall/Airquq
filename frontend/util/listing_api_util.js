export const fetchListings = data => (
  $.ajax({
    method: 'GET',
    url: '/api/listings',
    data
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