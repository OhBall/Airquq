import React from 'react';

const HomepageItems = ({ num, city, description }) => {
  return(
    <div className="homepage-detail-container">
      <div id="home-number">{num} VERIFIED HOMES</div>
      <div id="city-name">{city}</div>
      <div id="description">{description}</div>
    </div>
  )
};

export default HomepageItems;