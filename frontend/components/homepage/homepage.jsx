import React from 'react';
import ListingIndex from '../listing/listing_index';
import HomepageItems from './homepage_items';

class Homepage extends React.Component {

  componentDidMount() {
    this.props.fetchListings();
  }


  render() {
    return (
      <div className="homepage-container">
        <h2 className="homepage-title">Explore the world</h2>
        <h2 className="homepage-description">Book your next trip and escape the ordinary</h2>
        <ul className="homepage-container">
          <HomepageItems num="200+" city="Bali" description="Browse verified homes with artful style, in a city that wows from beach to land."/>
          <HomepageItems num="330+" city="San Francisco" description="Discover Victorian flats, SoMa lofts, and more verified homes in a city where invention meets counterculture."/>
          <HomepageItems num="270+" city="Rome" description="Experience the modern elegance of verified homes in this ancient and ever-evolving metropolis."/>
        </ul>
        <ListingIndex listings={ this.props.listings } />
      </div>
    )
  }
}

export default Homepage;