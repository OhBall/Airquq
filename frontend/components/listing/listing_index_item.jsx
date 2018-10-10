import React from 'react';

const ListingIndexItem = ({ listing }) => {
  return (
    <ul class="listing-details-container">
      <li>Name: { listing.name }</li>
      <li>Price: { listing.price }</li>
    </ul>
  )
};

export default ListingIndexItem;