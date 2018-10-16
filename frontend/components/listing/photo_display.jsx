import React from 'react';

const PhotoDisplay = ({ listing }) => {
  return(
    <div className="listing-show-photo-container">
      <img src={listing.photoUrl} />
    </div>
  )
};

export default PhotoDisplay;