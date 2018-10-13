import { connect } from 'react-redux';
import TripIndex from './trip_index';

const mapStateToProps = state => {
  // debugger
  return ({
  trips: Object.values(state.entities.bookings),
  currentUser: state.session.id
  });
}



const mapDispatchToProps = dispatch => ({
  fetchBookings: () => dispatch(fetchBookings)
});

export default connect(mapStateToProps, mapDispatchToProps)(TripIndex);