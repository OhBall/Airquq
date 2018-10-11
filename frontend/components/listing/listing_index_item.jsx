import React from 'react';

const ListingIndexItem = ({ listing, img }) => {
  return (
    <div className="listing-details-container">
      <img src={img} />
      <div className="listing-details-text">
        <div id="listing-city">{ listing.city.toUpperCase() }</div>
        <div id="listing-name">{ listing.name }</div>
        <div id="listing-price">${listing.price} per night · Free Cancellation  </div>
      </div>
    </div>
  )
};

export default ListingIndexItem;

