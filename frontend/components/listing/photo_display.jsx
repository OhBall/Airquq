import React from 'react';

const PhotoDisplay = ({ listing }) => {
  return(
    <div className="listing-show-photo-container">
      <div className="listing-show-left"> 
        <img src={listing.photoUrls[0]} />
      </div>

      <div className="listing-show-middle">
        <div className="middle-1">
          <img src={listing.photoUrls[1]} />
        </div>

        <div className="middle-2">
          <img src={listing.photoUrls[2]} />
        </div>
      </div>

      <div className="listing-show-right">
        <div className="right-1">
          <img src={listing.photoUrls[3]} />
        </div>

        <div className="right-2">
          <img src={listing.photoUrls[4]} />
        </div>
      </div>
    </div>
  )
};

export default PhotoDisplay;