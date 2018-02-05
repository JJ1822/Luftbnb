
export default class MarkerManager {
  constructor(map, handleClick) {
    this.map = map;
    this.markers = {};
  }

  updateMarkers(spots) {
    const spotsObj = {};
    spots.forEach(spot => spotsObj[spot.id] = spot);

    spots
      .filter(spot => !this.markers[spot.id])
      .forEach(newSpot => this.createMarkerFromSpot(newSpot));

    Object.keys(this.markers).filter(spotId => !spotsObj[spotId])
      .forEach(spotId => this.removeMarker(this.markers[spotId]));

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
