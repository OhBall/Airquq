import React from 'react';
import { Link } from 'react-router-dom';

const ListingIndexItem = ({ listing }) => {
  if (!listing) {
    return <div />
  }

  debugger
  return (
    <div className="listing-details-container">
      <Link to={`/listings/${listing.id}`}><img src={listing.photoUrl} /></Link>
      <div className="listing-details-text">
        <div id="listing-city">{ listing.city.toUpperCase() }</div>
        <Link to={`/listings/${listing.id}`}><div id="listing-name">{listing.name}</div></Link>
        <div id="listing-price">${listing.price} per night · Free Cancellation  </div>
      </div>
    </div>
  )
};

export default ListingIndexItem;

