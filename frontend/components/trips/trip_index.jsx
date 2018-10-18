import React from 'react';
import TripIndexItem from './trip_index_items';
import DotLoading from '../dot_loading';

class TripIndex extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      loading: true
    }

    setTimeout(() => this.setState({ loading: false }), 1500);
  }

  componentDidMount() {
    this.props.fetchTrips();
  }

  render() {

    if (!this.props.trips || this.state.loading) {
      return <DotLoading state={this.state} />;
    } else if (this.props.trips.length === 0) {
      return (
        <div className="no-trip">
          <h3>Explore Airquq to choose your next adventure</h3>
          <img src={window.images.notrip}/>
        </div>
      )
    } else {
      const trips = this.props.trips.map(trip => (
        <TripIndexItem key={trip.id} trip={trip} deleteTrip={this.props.deleteTrip} />
      ));
      return(
        <div>
          <p className="trips-index-title">All Trips</p>
          <div className="all-trip-items">
            {trips}
          </div>
          <div id="margin-in-trips-index" />
        </div>
      )
    }
  }
}

export default TripIndex;