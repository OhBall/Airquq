export const fetchBookings = () => (
  $.ajax({
    method: 'GET',
    url: '/api/bookings'
  })
);

export const fetchBooking = bookingId => (
  $.ajax({
    method: 'GET',
    url: `/api/bookings/${bookingId}`
  })
);

export const createBooking = (listingId, booking) => (
  $.ajax({
    method: 'POST',
    url: `/api/listings/${listingId}/bookings`,
    data: { booking }
  })
);

export const updateBooking = booking => (
  $.ajax({
    method: 'PATCH',
    url: `/api/bookings/${booking.id}`,
    data: { booking }
  })
);

export const deleteBooking = bookingId => (
  $.ajax({
    method: 'DELETE',
    url: `/api/bookings/${bookingId}`
  })
);