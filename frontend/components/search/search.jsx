import React from 'react';
import SearchResultIndex from './search_result_index';
import SearchMap from './search_map';
import Filterbar from './filterbar.jsx'
import CountUp from 'react-countup';
import Footer from '../navbar/footer';

class Search extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      rerender: false
    }
  }

  componentDidMount() {
  
    // this.props.fetchListings();
  }

  componentWillReceiveProps(nextProps) {
    // debugger
    if (this.props.location.search !== nextProps.location.search) {
      // this.props.fetchListings()
      this.props.removeListings();
    }
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
            <h3><CountUp useEasing={true} start={0} end={listings.length} duration={3} /> Airquq homes in this area</h3>
            <p>A selection of homes verified for quality and comfort</p>
            <div>
              <SearchResultIndex listings={this.props.listings} />
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