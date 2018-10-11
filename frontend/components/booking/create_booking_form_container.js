import { connect } from 'react-redux';
import { createBooking } from '../../actions/booking_actions';
import BookingForm from './booking_form';

const MapStateToProps = state => ({
  booking: {checkinDate: '', checkoutDate: ''}
});

const MapDispatchToProps = dispatch => ({
  processForm: booking => dispatch(createBooking(booking))
});

export default connect(MapStateToProps, MapDispatchToProps)(BookingForm);