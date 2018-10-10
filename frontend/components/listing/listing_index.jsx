import React from 'react';
import ListingIndexItem from './listing_index_item';

class ListingIndex extends React.Component {

  componentDidMount() {
    this.props.fetchListings();
  }

  render() {
    const listings = this.props.listings.map(listing => (
      <ListingIndexItem key={listing.id} listing={listing} />
    ));
    
    return (
      <div className="index-container">
        <p className="index-title">Homes around the world</p>
        <ul className="listings-container">
          {listings}
        </ul>
      </div>
    );
  }
}

export default ListingIndex;