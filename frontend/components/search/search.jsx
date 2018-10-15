import React from 'react';
import SearchResultIndex from './search_result_index';
import SearchMap from './search_map';
import Filterbar from './filterbar.jsx'
// import { withRouter } from 'react-router-dom';

class Search extends React.Component {

  componentDidMount() {
  
    // this.props.fetchListings();
  }

  render() {
    if (!this.props.listings) {
      return <div />
    }

    const { listings, updateFilter } = this.props;
    return(
      <div className="search-index-container">
        <Filterbar />
        <div className="search-results-and-map">
          <div className="search-results-section">
            <h3>{listings.length} Airquq homes in this area</h3>
            <p>A selection of homes verified for quality and comfort</p>
            <div>
              <SearchResultIndex />
            </div>
          </div>

          <div className="map-container">
            <SearchMap listings={listings} updateFilter={updateFilter} />
          </div>
        </div>
      </div>
    )
  }
}

export default Search;