import React from 'react';
import { Link } from 'react-router-dom';
import { deleteBooking } from '../../actions/booking_actions';

class TripIndexItem extends React.Component {

  render() {
    const { host, listing } = this.props.trip;

    return (
      <div className="trip-index-item-container">
        <img src={window.images.home2} />
        <h3>{listing.city}</h3>
        <p>{this.props.trip.checkoutDate}</p>
        <p>Host: {host.firstName}</p>
        <p>{listing.name}</p>
        <div id="delete-trip-button" onClick={() => this.props.deleteTrip(this.props.trip.id)}>Cancel this booking</div>
     </div>
  )
  }
}

export default TripIndexItem;

// 