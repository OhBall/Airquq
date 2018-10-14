import React from 'react';

class ListingMap extends React.Component {

  componentDidMount() {
    const { lat, lng } = this.props.listing;
    const mapOptions = {
      center: { lat, lng },
      zoom: 7
    }

    this.map = new google.maps.Map(this.mapNode, mapOptions);
  }

  render() {
    return(
      <div ref={ map => this.mapNode = map } className="listing-map"></div>
    )
  }
}

export default ListingMap;