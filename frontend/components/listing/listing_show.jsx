import React from 'react';
import Amenities from './amenities';
import DetailInfo from './detail_info';
import PhotoDisplay from './photo_display';
import CreateBookingFormContainer from '../booking/create_booking_form_container';
import { BeatLoader } from 'react-spinners'; 

class ListingShow extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      loading: true
    }

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

  render() {
    const listing = this.props.listing;

    if(!listing || this.state.loading) {
      return (
        <div className="react-spinner-container">
          <BeatLoader
            className="beat-loader"
            sizeUnit={"px"}
            size={20}
            color={'#008489'}
            loading={this.state.loading}
          />
      </div> )
    } else {
      return (
        <div className="listing-show-page">
          <div><PhotoDisplay img={window.images.show1} /></div>
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

                <div><Amenities listing={listing} /></div>
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