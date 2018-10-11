import React from 'react';

class BookingForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.booking;
  }

  render() {
    const listing = this.props.listing;

    if (!listing) {
      return <div />
    }

    return (
    <div className="booking-form-container">
      <div className="price-container">
        <div>{listing.price}</div>
        <p>per night</p>
      </div>

      <form>
        <p>Dates</p>

        <p>Guests</p>

      </form>
    </div>
    )
  }
}

export default BookingForm;