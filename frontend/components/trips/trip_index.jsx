import React from 'react';
import TripIndexItem from './trip_index_items';
import DotLoading from '../dot_loading';

class TripIndex extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      loading: false

    }

    // setTimeout(() => this.setState({ loading: false }), 1500);
  }

  componentDidMount() {
    this.props.fetchBookings();

  }

  render() {

    if (!this.props.trips || this.props.trips.length === 0 || !this.props.trips[this.props.trips.length-1].listing || this.state.loading) {
      return <DotLoading state={this.state} />;
    } else {
      // debugger
      const trips = this.props.trips.map(booking => (
        <TripIndexItem key={booking.id} trip={booking} />
      ));
  
      return(
        <div>
          <h1>Trips index page</h1>
          <div className="all-trip-items">
            {trips}
          </div>
        </div>
      )
    }
  }
}

export default TripIndex;