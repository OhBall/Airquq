import { connect } from 'react-redux';
import TripIndex from './trip_index';
import { fetchTrips } from '../../actions/booking_actions';

const mapStateToProps = state => {
  // debugger
  return ({
  trips: Object.values(state.entities.trips),
  });
}



const mapDispatchToProps = dispatch => ({
  fetchTrips: () => dispatch(fetchTrips())
});

export default connect(mapStateToProps, mapDispatchToProps)(TripIndex);