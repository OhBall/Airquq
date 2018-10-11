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
        <div className="homepage-text">
          <p id="homepage-title">Explore the world</p>
          <p id="homepage-description">Book your next trip and escape the ordinary</p>
        </div>
        <ul className="homepage-item-container">
          <HomepageItems img={window.images.page1} num="200+" city="Bali" description="Browse verified homes with artful style, in a city that wows from beach to land."/>
          <HomepageItems img={window.images.page1} num="330+" city="San Francisco" description="Discover Victorian flats, SoMa lofts, and more verified homes in a city where invention meets counterculture."/>
          <HomepageItems img={window.images.page1} num="270+" city="Rome" description="Experience the modern elegance of verified homes in this ancient and ever-evolving metropolis."/>
        </ul>
        <ListingIndex listings={ this.props.listings } />
      </div>
    )
  }
}

export default Homepage;