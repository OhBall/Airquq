import React from 'react';
import TripIndexItem from './trip_index_items';

class TripIndex extends React.Component {

  componentDidMount() {
    this.props.fetchBookings();
  }

  render() {

    if (!this.props.trips) {
      return <div />
    }

    const trips = this.props.trips.map(booking => (
      <TripIndexItem key={booking.id} trip={booking} />
    ));

    return(
      <div>
        <h1>Trips index page</h1>
        {trips}
      </div>
    )
  }
}

export default TripIndex;