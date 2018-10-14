import React from 'react';
import { Link } from 'react-router-dom';

const TripIndexItem = ({ trip }) => {
  const { host, listing } = trip;
  // debugger
  return (
    <div className="trip-index-item-container">
      <Link to={`/listings/${listing.id}`}><div>
        <img src={window.images.home2} />
        <h3>{listing.city}</h3>
        <p>{trip.checkoutDate}</p>
        <p>Host: {host.firstName}</p>
        <p>{listing.name}</p>
      </div></Link>
    </div>
  )
};

export default TripIndexItem;
