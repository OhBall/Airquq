import React from 'react';
import enhanceWithClickOutside from 'react-click-outside';
import { Link } from 'react-router-dom';

class SearchDropdown extends React.Component {

  handleClickOutside() {
    this.props.closeModal();
  }

  render() {
    return(
      <div className="search-dropdown-container">
        <p>Explore Airquq homes</p>
        <ul>
          <Link to="/search?lat=37.7749&lng=-122.4194"><li onClick={this.props.closeModal}><i className="fas fa-map-marker-alt"></i>San Francisco</li></Link>
          <Link to="/search?lat=34.0522342&lng=-118.2436849"><li onClick={this.props.closeModal}><i className="fas fa-map-marker-alt"></i>Los Angeles</li></Link>
          <Link to="/search?lat=25.7617&lng=-80.1918"><li onClick={this.props.closeModal}><i className="fas fa-map-marker-alt"></i>Miami</li></Link>
          <Link to="/search?lat=47.6062095&lng=-122.3320708"><li onClick={this.props.closeModal}><i className="fas fa-map-marker-alt"></i>Seattle</li></Link >
        </ul>
      </div>
    )
  }
}

export default enhanceWithClickOutside(SearchDropdown);