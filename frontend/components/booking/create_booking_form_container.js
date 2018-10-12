import { connect } from 'react-redux';
import { createBooking } from '../../actions/booking_actions';
import BookingForm from './booking_form';

const MapStateToProps = (state, ownProps) => {
  return ({
  booking: {checkin_date: '', checkout_date: '', guest_num: '', listing_id: ownProps.listing.id}
  })
};

const MapDispatchToProps = dispatch => ({
  processForm: booking => dispatch(createBooking(booking))
});

export default connect(MapStateToProps, MapDispatchToProps)(BookingForm);