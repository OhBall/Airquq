import React from 'react';
import bulb from '../../../app/assets/images/bulb.png';
import DotLoading from '../dot_loading';
import { withRouter } from 'react-router-dom'
// import DateRangePicker from 'react-dates/lib/components/DateRangePicker';
import { DateRangePicker, SingleDatePicker, DayPickerRangeController } from 'react-dates';

class BookingForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      checkin_date: null,
      checkout_date: null,
      focusedInput: null,
      loading: false,
      guest_num: 0
    }

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleGuestInput = this.handleGuestInput.bind(this);
  }

  handleGuestInput(e) {
    this.setState({ guest_num: parseInt(e.currentTarget.value) });
  }

  // will change to redirect after finishing trips page
  // displayThanks() {
  //   if (this.thanks) {
  //     return (<p className="thanks"> Thank you for your booking! </p>)
  //   } else {
  //     return null;
  //   }
  // }

  handleSubmit(e) {
    e.preventDefault();
    const booking = {
      checkin_date: this.state.checkin_date._d,
      checkout_date: this.state.checkout_date._d,
      guest_num: this.state.guest_num,
      listing_id: parseInt(this.props.match.params.listingId)
    };
    // debugger
    
    // setTimeout(() => this.setState({ loading: false }), 1000);
    // this.setState({ loading: true });


    this.props.processForm(booking).then(
      this.props.history.push("/trips"), this.props.fet
      );
    // add .then(go-to-booking-index-page) later
  }

  render() {
    const listing = this.props.listing;
    
    if (this.state.loading) {
      return <DotLoading state={this.state} />;
    } else if (!listing){
        return <div />
    } else {
      return (
      <div className="booking-form-container">
        <div className="price-container">
          <div>${listing.price}</div>
          <p>per night</p>
        </div>
        
        <div className="divide-line" />

        <form className="booking-form">
          <p>Dates</p>


          <DateRangePicker
            startDate={this.state.checkin_date} // momentPropTypes.momentObj or null,
            startDateId="booking-form-checkin" // PropTypes.string.isRequired,
            endDate={this.state.checkout_date} // momentPropTypes.momentObj or null,
            endDateId="booking-from-checkout" // PropTypes.string.isRequired,
            onDatesChange={({ startDate, endDate }) => this.setState({ checkin_date: startDate, checkout_date: endDate })}  // PropTypes.func.isRequired,
            focusedInput={this.state.focusedInput} // PropTypes.oneOf([START_DATE, END_DATE]) or null,
            onFocusChange={focusedInput => this.setState({ focusedInput })} // PropTypes.func.isRequired,
            startDatePlaceholderText="Check In"
            endDatePlaceholderText="Check Out"
            showClearDates={true}
          />

          <p>Guests</p>
            <input className="guest-number" type="number" min="1" max={listing.bedNum * 2} defaultValue="1" onChange={this.handleGuestInput} />

          <div className="divide-line" />

            <div className="booking-form-button" onClick={this.handleSubmit}>Book</div>
        </form>

        <div className="info-under-form-container">
          <div className="info-under-text">
            <p>This home is on people’s minds.</p>
            <p>It’s been viewed 500+ times in the past week.</p>
          </div>
          <img src={bulb} />
        </div>
      </div>
    )
    }
  }
}

export default withRouter(BookingForm);