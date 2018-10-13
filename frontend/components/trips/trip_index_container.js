import { connect } from 'react-redux';
import TripIndex from './trip_index';

const mapStateToProps = state => ({
  trips: Object.values(state.entities.bookings)
});

const mapDispatchToProps = dispatch => ({
  fetchBookings: () => dispatch(fetchBookings)
});

export default connect(mapStateToProps, mapDispatchToProps)(TripIndex);