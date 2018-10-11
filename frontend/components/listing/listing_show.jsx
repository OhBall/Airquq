import React from 'react';
import Amenities from './amenities';
import DetailInfo from './detail_info';
import PhotoDisplay from './photo_display';

class ListingShow extends React.Component {

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

    if(!listing) {
      return (<h1>Loading</h1>)
    }

    return (
      <div className="listing-show-container">
        <div><PhotoDisplay img={window.images.show1}/></div>
        <div className="all-info-container">
          <div className="listing-show-name">{ listing.name }</div>
          <div className="listing-show-city">{ listing.city }</div>
          <div><DetailInfo listing={listing}/></div>
          {/* <div className="divide-line" /> */}
          <div className="listing-show-description">
            <p>HOME HIGHLIGHTS</p>
            { listing.description }
          </div>

          {/* <div className="divide-line" /> */}
          <div><Amenities listing={listing} /></div>
        </div>
      </div>
    )
  }
}

export default ListingShow;