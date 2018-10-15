import { connect } from 'react-redux';
import TripIndex from './trip_index';
import { fetchTrips, deleteTrip } from '../../actions/booking_actions';

const mapStateToProps = state => {
  return ({
  trips: Object.values(state.entities.trips),
  });
}


const mapDispatchToProps = dispatch => ({
  fetchTrips: () => dispatch(fetchTrips()),
  deleteTrip: bookingId => dispatch(deleteTrip(bookingId))
});

export default connect(mapStateToProps, mapDispatchToProps)(TripIndex);