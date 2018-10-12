import React from 'react';
import ListingIndex from '../listing/listing_index';
import HomepageItems from './homepage_items';
import DotLoading from '../dot_loading';

class Homepage extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      loading: true,
    }

    setTimeout(() => this.setState({loading: false}), 1500);
  }

  componentDidMount() {
    this.props.fetchListings();
  }

  render() {
    
    if (this.state.loading) {
      return <DotLoading state={this.state} />;
    } else {    
      return (
        <div className="homepage-container">
          <div className="homepage-text">
            <p id="homepage-title">Explore the world</p>
            <p id="homepage-description">Book your next trip and escape the ordinary</p>
          </div>
          <ul className="homepage-item-container">
            <HomepageItems img={window.images.page3} num="200+" city="San Francisco" description="Browse verified homes with artful style, in a city that wows from beach to land."/>
            <HomepageItems img={window.images.page1} num="330+" city="New York" description="Discover Victorian flats, SoMa lofts, and more verified homes in a city where invention meets counterculture."/>
            <HomepageItems img={window.images.page2} num="270+" city="Seattle" description="Experience the modern elegance of verified homes in this ancient and ever-evolving metropolis."/>
          </ul>

          <ListingIndex listings={this.props.listings} city="San Francisco" img={window.images.home3}/>
          <ListingIndex listings={this.props.listings} city="New York" img={window.images.home2}/>
          <ListingIndex listings={this.props.listings} city="Seattle" img={window.images.home5} />
        </div>
      )
    }
  }
}

export default Homepage;