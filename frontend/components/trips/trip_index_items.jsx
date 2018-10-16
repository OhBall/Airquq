import React from 'react';
import DotLoading from '../dot_loading';
import Carousel from 'nuka-carousel';
import { Link } from 'react-router-dom';

class TripIndexItem extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      loading: false
    }

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    setTimeout(() => this.props.deleteTrip(this.props.trip.id), 1000);
    setTimeout(() => this.setState({loading: false}), 1500)
    this.setState({loading: true});
  }

  render() {
    if (this.state.loading) {
      return <DotLoading state={this.state} />;
    } else {
      const { host, listing } = this.props.trip;
      return (
        <div className="trip-index-item-container">
          <Link to={`/listings/${listing.id}`}><Carousel>
            <img src={listing.photoUrls[0]} />
            <img src={listing.photoUrls[1]} />
            <img src={listing.photoUrls[2]} />
            <img src={listing.photoUrls[3]} />
            <img src={listing.photoUrls[4]} />
          </Carousel></Link>

          {/* <img src={listing.photoUrls[0]} /> */}
          <h3>{listing.city}</h3>
          <p>{this.props.trip.checkoutDate}</p>
          <p>Host: {host.firstName}</p>
          <p>{listing.name}</p>
          <div id="delete-trip-button" onClick={this.handleClick}>Cancel this booking</div>
       </div>
      )
    }
  }
}

export default TripIndexItem;

// 