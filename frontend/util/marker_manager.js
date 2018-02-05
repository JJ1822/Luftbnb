
export default class MarkerManager {
  constructor(map, handleClick) {
    this.map = map;
    this.markers = {};
  }

  updateMarkers(spots) {
    // const spotObj = {};
    // spots.forEach(spot => spotObj[spot.id] = spot);

    spots.forEach(newSpot => this.createMarkerFromSpot(newSpot));

  }

  createMarkerFromSpot(spot) {
    let { id, latitude, longitude, price_per_day } = spot;
    const position = new google.maps.LatLng( latitude, longitude);
    const marker = new google.maps.Marker({
      position,
      map: this.map,
      spotId: id,
      animation: google.maps.Animation.DROP
    });

    // let infoWindow = new google.maps.InfoWindow({
    //   content: content
    // });
    //
    // marker.addListener('click', () => {
    //   infoWindow.open(this.map, marker);
    // });


  }

  removeMarker(marker) {
    this.marker[marker.spotId].setMap(null);
    delete this.markers[marker.spotId];
  }

}
