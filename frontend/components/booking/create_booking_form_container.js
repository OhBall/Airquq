import { connect } from 'react-redux';
import { createBooking, clearBookingErrors } from '../../actions/booking_actions';
import BookingForm from './booking_form';
import { openModal } from '../../actions/modal_actions';

const MapStateToProps = (state) => ({
  currentUserId: state.session.id,
  errors: state.errors.bookings
});

const MapDispatchToProps = dispatch => ({
  processForm: booking => dispatch(createBooking(booking)),
  openModal: modal => dispatch(openModal(modal)),
  clearBookingErrors: () => dispatch(clearBookingErrors())
});

export default connect(MapStateToProps, MapDispatchToProps)(BookingForm);