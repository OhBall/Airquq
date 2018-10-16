import React from 'react';

class Filterbar extends React.Component {
  render() {
    return (
      <div className="filterbar-container">
        <ul>
          <li>Price</li>
          <li>Guests</li>
          <li>Bedrooms</li>
          <li>Bathrooms</li>
          <li>Ratings</li>
          <li>Review Counts</li>
        </ul>
      </div>
    )
  }
}

export default Filterbar;