import React from 'react';

class ListingMap extends React.Component {

  componentDidMount() {
    const { lat, lng } = this.props.listing;
    const mapOptions = {
      center: { lat, lng },
      zoom: 9
    }

    this.map = new google.maps.Map(this.mapNode, mapOptions);

    this.marker = new google.maps.Circle({
      strokeColor: '#71cec9',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#90ece4',
      fillOpacity: 0.6,
      map: this.map,
      center: {lat, lng},
      radius: 5000
    })
  }

  render() {
    return(
      <div ref={ map => this.mapNode = map } className="listing-map"></div>
    )
  }
}

export default ListingMap;