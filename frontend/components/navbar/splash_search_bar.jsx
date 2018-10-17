import React from 'react';
import { withRouter } from 'react-router-dom';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      address: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.setAddress = this.setAddress.bind(this);
    this.handleInput = this.handleInput.bind(this);
  }

  componentDidMount() {
    const input = document.getElementsByClassName("splash-search-bar")[0];
    const autocomplete = new google.maps.places.Autocomplete(input);
    google.maps.event.addDomListener(window, "load", autocomplete);
    let address;
    autocomplete.addListener("place_changed", () => {
      if (!autocomplete.getPlace().formatted_address) {
        address = autocomplete.getPlace().name;
        this.setState({ address });
        this.handleSubmit();
      } else {
        address = autocomplete.getPlace().formatted_address;
        this.setState({ address });
        this.handleSubmit();
      }
    })
  }

  setAddress(address) {
    this.setState({ address })
  }

  handleSubmit(e) {
    const geocoder = new google.maps.Geocoder();

    geocoder.geocode({ address: this.state.address }, (results, status) => {
      if (status === google.maps.GeocoderStatus.OK) {
        const lat = results[0].geometry.location.lat();
        const lng = results[0].geometry.location.lng();

        this.props.history.push(`/search?lat=${lat}&lng=${lng}`);
      } else {
        this.props.history.push(`/search?lat=37.7749&lng=-122.4194`);
      }
    });

    if (e) {
      e.preventDefault();
    }
  }

  handleInput(e) {
    this.setState({ address: e.currentTarget.value })
  }

  render() {
    const cities = ['Los Angeles', 'San Francisco', 'New York', 'Seattle'];
    const randomCity = cities[Math.floor(Math.random() * cities.length)];

    return (
      <div className="splash-search">
        <p id="welcome-message">Book Unique homes around the world.</p>
        
        <form onSubmit={this.handleSubmit}>
          <i className="fas fa-search"></i>

          <input className="splash-search-bar" 
            type="text" onChange={this.handleInput} 
            value={this.state.address} placeholder={`Try "${randomCity}"`} 
          />

          <p id="splash-nav-bar-button" onClick={this.handleSubmit}>Search</p>
        </form>
      </div>
    )
  }
}

export default withRouter(SearchBar);