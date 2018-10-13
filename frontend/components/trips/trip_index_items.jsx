import React from 'react';

const TripIndexItem = ({ trip }) => {
  const { host, listing } = trip;
  return (
    <div className="trip-index-item-container">
      <img src={window.images.home2} />
      <h3>{listing.city}</h3>
      <p>{trip.checkoutDate}</p>
      <p>Host: {host.firstName}</p>
      <p>{listing.name}</p>
    </div>
  )
};

export default TripIndexItem;
