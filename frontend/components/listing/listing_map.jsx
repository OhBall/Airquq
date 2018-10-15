import React from 'react';

class ListingMap extends React.Component {

  componentDidMount() {
    const { lat, lng } = this.props.listing;
    const mapOptions = {
      center: { lat, lng },
      zoom: 10
    }

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.marker = new google.maps.Marker({
      position: { lat, lng },
      map: this.map,
      title: "listing"
    })
  }

  render() {
    return(
      <div ref={ map => this.mapNode = map } className="listing-map"></div>
    )
  }
}

export default ListingMap;