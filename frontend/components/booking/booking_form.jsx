import React from 'react';
import bulb from '../../../app/assets/images/bulb.png';
import DotLoading from '../dot_loading';

class BookingForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      booking: this.props.booking,
      loading: false
    }
    this.thanks = false;

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleInput(field) {
    const booking = {...this.state.booking};
    return e => {
      booking[field] = e.currentTarget.value;
      this.setState({ booking });
    }
  }

  // place holder
  displayThanks() {
    if (this.thanks) {
      return (<p className="thanks"> Thank you for your booking! </p>)
    } else {
      return null;
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const booking = Object.assign({}, this.state.booking);
    setTimeout(() => this.setState({ loading: false }), 1000);
    this.setState({ loading: true });
    this.thanks = true;
    this.props.processForm(booking);
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

      {this.displayThanks()}

      <form className="booking-form">
        <p>Dates</p>
        <input className="calendar" type="date" onChange={this.handleInput('checkin_date')}/>
        <input className="calendar" type="date" onChange={this.handleInput('checkout_date')} />
        <p>Guests</p>
        <input className="guest-number" type="number" onChange={this.handleInput('guest_num')} />

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

export default BookingForm;