import React from 'react';
import DotLoading from '../dot_loading';

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
          <img src={listing.photoUrl} />
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