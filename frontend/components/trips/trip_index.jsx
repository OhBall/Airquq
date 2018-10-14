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
    this.props.fetchTrips();

  }

  render() {

    if (!this.props.trips || this.state.loading) {
      return <DotLoading state={this.state} />;
    } else {
      // debugger
      const trips = this.props.trips.map(trip => (
        <TripIndexItem key={trip.id} trip={trip} />
      ));
      return(
        <div>
          <p className="trips-index-title">Upcoming Trips</p>
          <div className="all-trip-items">
            {trips}
          </div>
        </div>
      )
    }
  }
}

export default TripIndex;