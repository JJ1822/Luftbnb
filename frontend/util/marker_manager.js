
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
    const position = new google.maps.LatLng( spot.latitude, spot.longitude);
    const marker = new google.maps.Marker({
      position,
      map: this.map,
      spotId: spot.id
    });
  }

  removeMarker(marker) {
    this.marker[marker.spotId].setMap(null);
    delete this.markers[marker.spotId];
  }

}
