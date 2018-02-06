
export default class MarkerManager {
  constructor(map, handleClick) {
    this.map = map;
    this.markers = {};
    this.removeMarker = this.removeMarker.bind(this);
  }

  updateMarkers(spots) {
    const spotsObjasdf = {};
    spots.forEach(spot => {
      spotsObjasdf[spot.id] = spot;
    });
    spots
      .filter(spot => !this.markers[spot.id])
      .forEach(newSpot => this.createMarkerFromSpot(newSpot));

    Object.keys(this.markers).filter(spotId => !spotsObjasdf[spotId])
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
    this.markers[id] = marker;

    // let infoWindow = new google.maps.InfoWindow({
    //   content: content
    // });
    //
    // marker.addListener('click', () => {
    //   infoWindow.open(this.map, marker);
    // });


  }

  removeMarker(marker) {
    this.markers[marker.spotId].setMap(null);
    delete this.markers[marker.spotId];
  }

}
