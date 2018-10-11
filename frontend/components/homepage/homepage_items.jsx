import React from 'react';

const HomepageItems = ({ img, num, city, description }) => {
  return(
    <div className="homepage-detail-container">
      <img src={img} />
      <div className="item-text-container">
        <div id="home-number">{num} VERIFIED HOMES</div>
        <div id="city-name">{city}</div>
        <div id="description">{description}</div>
      </div>
    </div>
  )
};

export default HomepageItems;