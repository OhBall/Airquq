import React from 'react';

class ListingMap extends React.Component {

  componentDidMount() {
    const { lat, lng } = this.props.listing;
    const mapOptions = {
      center: { lat, lng },
      zoom: 10
    }

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    // this.marker = new google.maps.Marker({
    //   position: { lat, lng },
    //   map: this.map,
    //   title: "listing"
    // })

    this.marker = new google.maps.Circle({
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#FF0000',
      fillOpacity: 0.35,
      map: map,
      center: citymap[city].center,
      radius: Math.sqrt(citymap[city].population) * 100
    })
  }

  render() {
    return(
      <div ref={ map => this.mapNode = map } className="listing-map"></div>
    )
  }
}

export default ListingMap;