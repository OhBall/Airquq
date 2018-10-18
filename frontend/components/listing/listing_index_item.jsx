import React from 'react';
import { Link } from 'react-router-dom';
import Carousel from 'nuka-carousel';
import { toStars } from '../review/show_stars';

const ListingIndexItem = ({ listing }) => {
  if (!listing) {
    return <div />
  }

  return (
    <div className="listing-details-container">
      <Link to={`/listings/${listing.id}`}><Carousel>
        <img src={listing.photoUrls[0]} />
        <img src={listing.photoUrls[1]} />
        <img src={listing.photoUrls[2]} />
        <img src={listing.photoUrls[3]} />
      </Carousel></Link>

      <div className="listing-details-text">
        <div id="listing-city">{ listing.city.toUpperCase() }</div>
        <Link to={`/listings/${listing.id}`}><div id="listing-name">{listing.name}</div></Link>
        <div id="listing-price">${listing.price} per night · Free Cancellation  </div>
        <div className="index-stars"><p>{listing.averageRating}</p>{toStars(listing.averageRating)}</div>
      </div>
    </div>
  )
};

export default ListingIndexItem;

