import React from 'react';
import Amenities from './amenities';
import DetailInfo from './detail_info';
import PhotoDisplay from './photo_display';
import CreateBookingFormContainer from '../booking/create_booking_form_container';
import ReviewIndex from '../review/review_index';
import DotLoading from '../dot_loading';
import ListingMap from './listing_map';
import HostInfo from './host_info';
import moment from 'moment';
import { DayPickerRangeController } from 'react-dates';

class ListingShow extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      loading: true //change to true later
    }

    // for spinner to work
    setTimeout(() => this.setState({ loading: false}), 1500);
  }

  componentDidMount() {
    this.props.fetchListing(this.props.match.params.listingId)
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.listing && parseInt(nextProps.match.params.listingId) != this.props.listing.id) {
      this.props.fetchListing(nextProps.match.params.listingId)
    }
  }

  isDayBooked(day) {
    const formattedDay = day.format('YYYY-MM-DD');
    const dates = this.props.listing.bookedDates.map(date => moment(date).format('YYYY-MM-DD'));
    return dates.includes(formattedDay);
  } 

  render() {
    // const listing = this.props.listing;
    const { listing, reviews } = this.props;

    if(!listing || this.state.loading) {
      return <DotLoading state={this.state} />;
    } else {
      return (
        <div className="listing-show-page">
          <div><PhotoDisplay listing={listing} /></div>
          <div className="listing-show-all-info">
            <div className="listing-show-left">
              <div className="all-info-container">
                <div className="listing-show-name">{listing.name}</div>
                <div className="listing-show-city">{listing.city}</div>
                <div><DetailInfo listing={listing} /></div>
                <div className="listing-show-description">
                  <p>HOME HIGHLIGHTS</p>
                  {listing.description}
                </div>
                <Amenities listing={listing} />
                <div className="divide-line" />
                <HostInfo listing={listing} />
              </div>

              <div className="divide-line" />

              <div className="availability-calendar-container">
                <h3>Availability</h3>
                <div className="availability-calendar">
                  <DayPickerRangeController
                    startDate={this.state.startDate} // momentPropTypes.momentObj or null,
                    endDate={this.state.endDate} // momentPropTypes.momentObj or null,
                    onDatesChange={({ startDate, endDate }) => this.setState({ startDate, endDate })} // PropTypes.func.isRequired,
                    focusedInput={this.state.focusedInput} // PropTypes.oneOf([START_DATE, END_DATE]) or null,
                    onFocusChange={focusedInput => this.setState({ focusedInput })} // PropTypes.func.isRequired,
                    hideKeyboardShortcutsPanel={true}
                    isDayBlocked={day => this.isDayBooked(day)}
                    numberOfMonths={2}
                  />
                </div>
              </div>

              <div className="divide-line" />

              <div className="neighborhood">
                <p>The Neighborhood</p>
                <ListingMap listing={listing} />
              </div>

              <div className="review-index-container">
                <ReviewIndex reviews={reviews} />
              </div>
            </div>

            <div className="listing-show-right">
              <CreateBookingFormContainer listing={listing} />
            </div>

          </div>
        </div>
      )
    }
  }
}

export default ListingShow;