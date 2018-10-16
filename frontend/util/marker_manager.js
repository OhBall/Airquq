class MarkerManager {
  constructor(map) {
    this.map = map;
    this.markers = {};
  }

  updateMarkers(listings) {
    const listingsObj = {};
    listings.forEach(listing => listingsObj[listing.id] = listing);

    listings
      .filter(listing => !this.markers[listing.id])
      .forEach(newListing => this.createMarkerFromListing(newListing));

    Object.keys(this.markers)
      .filter(listingId=> !listingsObj[listingId])
      .forEach((listingId) => this.removeMarker(this.markers[listingId]));
  }

  createMarkerFromListing(listing) {
    const { lat, lng } = listing;

    const mapIcon = {
      path: "m22,-28.38281l-44,0l0,20l16,0l6,5l6,-5l16,0l0,-20z",
      fillColor: "white",
      fillOpacity: 1,
      scale: 1.05,
      strokeColor: "grey",
      labelOrigin: new google.maps.Point(0, -18),
      strokeWeight: 0.6
    };
    
    this.markers[listing.id] = new google.maps.Marker({
      position: { lat, lng },
      map: this.map,
      title: listing.name,
      listingId: listing.id,
      label: "$" + String(listing.price),
      icon: mapIcon
    });

    let marker = this.markers[listing.id];
    marker.setMap(this.map);
  }

  removeMarker(marker) {
    this.markers[marker.listingId].setMap(null);
    delete this.markers[marker.listingId];
  }
}

export default MarkerManager;