import { connect } from 'react-redux';
import { createBooking } from '../../actions/booking_actions';
import BookingForm from './booking_form';

const MapStateToProps = (state, ownProps) => {
  // return ({
  //   booking: { checkin_date: null, checkout_date: null, guest_num: null, listing_id: ownProps.listing.id}
  // })
  return null;
};

const MapDispatchToProps = dispatch => ({
  processForm: booking => dispatch(createBooking(booking))
});

export default connect(null, MapDispatchToProps)(BookingForm);