import React from 'react';
import SearchResultIndex from './search_result_index';
import SearchMap from './search_map';
import Filterbar from './filters/filterbar.jsx'
import CountUp from 'react-countup';

class Search extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      rerender: false
    }
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.location.search !== nextProps.location.search) {
      this.props.removeListings();
    }
  }

  render() {
    if (!this.props.listings) {
      return <div />
    }

    const { listings, updateFilter, openModalWithListing } = this.props;
    debugger
    return (
      <div className="search-index-container">
        <Filterbar openModal={this.props.openModal} />
        <div className="search-results-and-map">
          <div className="search-results-section">
            <h3><CountUp useEasing={true} start={0} end={listings.length} duration={3} /> Airquq homes in this area</h3>
            <h4>A selection of homes verified for quality and comfort</h4>
            <div>
              <SearchResultIndex listings={this.props.listings} />
            </div>
          </div>

          <div className="map-container">
            <SearchMap listings={listings} updateFilter={updateFilter} openModalWithListing={openModalWithListing} />
          </div>
        </div>
      </div>
    )
  }
}

export default Search;