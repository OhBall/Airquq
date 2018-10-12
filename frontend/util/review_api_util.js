const fetchReviews = () => (
  $.ajax({
    method: 'GET',
    url: '/api/reviews'
  })
);

const createReview = review => (
  $.ajax({
    method: 'POST',
    url: 'api/reviews',
    data: { review }
  })
);