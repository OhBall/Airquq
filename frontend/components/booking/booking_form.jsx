import React from 'react';
import bulb from '../../../app/assets/images/bulb.png';
import DotLoading from '../dot_loading';
import { withRouter } from 'react-router-dom'
// import DateRangePicker from 'react-dates/lib/components/DateRangePicker';
import { DateRangePicker, SingleDatePicker, DayPickerRangeController } from 'react-dates';
import momentPropTypes from 'react-moment-proptypes';
import moment from 'moment';

class BookingForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      checkin_date: null,
      checkout_date: null,
      focusedInput: null,
      loading: false,
      guest_num: 1,
      fireRedirect: false
    }

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleGuestInput = this.handleGuestInput.bind(this);
  }

  handleGuestInput(e) {
    this.setState({ guest_num: parseInt(e.currentTarget.value) });
  }

  componentDidMount() {
    this.props.clearBookingErrors();
  }

  // componentWillUnmount() {
  //   this.props.clearBookingErrors();
  // }

  handleSubmit(e) {
    e.preventDefault();

    this.props.clearBookingErrors;

    if (!this.props.currentUserId) {
      scrollTo(0, 0);
      this.props.openModal('login');
    }
    const booking = {
      checkin_date: this.state.checkin_date._d,
      checkout_date: this.state.checkout_date._d,
      guest_num: this.state.guest_num,
      listing_id: parseInt(this.props.match.params.listingId)
    };
    
    setTimeout(() => this.setState({ loading: false }), 1000);
    this.setState({ loading: true });


    this.props.processForm(booking).then(
      () => this.setState({ fireRedirect: true }),
      () => this.setState({ fireRedirect: false })
    );
  }

  isDayBooked(day) {
    const formattedDay = day.format('YYYY-MM-DD');
    const dates = this.props.listing.bookedDates.map(date => moment(date).format('YYYY-MM-DD'));
    return dates.includes(formattedDay);
  } 

  renderErrors() {
    return (
      <ul className="bookings-errors-list">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    const listing = this.props.listing;
    console.log(this.state.fireRedirect);
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
          {this.renderErrors()}
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
            hideKeyboardShortcutsPanel={true}
            isDayBlocked={day => this.isDayBooked(day)}
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

        {this.state.fireRedirect && this.props.history.push("/trips")}
      </div>
    )
    }
  }
}

export default withRouter(BookingForm);