import React from 'react';

const TripIndexItem = ({ trip }) => {
  return (
    <div>
      <h3>Trip - {trip.id}</h3>
      <p>Host: {trip.host.firstName}</p>
      <p>Home Name:{trip.listing.name}</p>
    </div>
  )
};

export default TripIndexItem;
