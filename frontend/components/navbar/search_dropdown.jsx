import React from 'react';

class SearchDropdown extends React.Component {
  render() {
    return(
      <div className="search-dropdown-container">
        <p>Explore Airquq homes</p>
        <ul>
          <li><i className="fas fa-map-marker-alt"></i>San Francisco</li>
          <li><i className="fas fa-map-marker-alt"></i>Los Angeles</li>
          <li><i className="fas fa-map-marker-alt"></i>New York</li>
          <li><i className="fas fa-map-marker-alt"></i>Seattle</li>
        </ul>
      </div>
    )
  }
}

export default SearchDropdown;