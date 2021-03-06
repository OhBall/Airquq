import React from 'react'; 
import ListingIndexItem from '../listing/listing_index_item';

class SearchResultIndex extends React.Component {
  render() {
    if (!this.props.listings) {
      return <div />
    }

    const listingItems = this.props.listings.map(listing =>(
      <ListingIndexItem key={listing.id} listing={listing} img={window.images.home2} />
    ))

    return (
      <ul className="search-result-ul">
        {listingItems}
      </ul>
    )
  }
}

export default SearchResultIndex;