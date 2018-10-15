import { connect } from 'react-redux';
import { createBooking } from '../../actions/booking_actions';
import BookingForm from './booking_form';
import { openModal } from '../../actions/modal_actions';

const MapStateToProps = (state) => ({
  currentUserId: state.session.id
});

const MapDispatchToProps = dispatch => ({
  processForm: booking => dispatch(createBooking(booking)),
  openModal: modal => dispatch(openModal(modal))
});

export default connect(MapStateToProps, MapDispatchToProps)(BookingForm);