import React from 'react';

const PhotoDisplay = ({ img }) => {
  return(
    <div className="listing-show-photo-container">
      <img src={img} />
    </div>
  )
};

export default PhotoDisplay;