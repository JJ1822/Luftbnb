
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
    let test = {
    url: window.staticImages.map, // url
    scaledSize: new google.maps.Size(70, 70), // scaled size
    labelOrigin: new google.maps.Point(34,27), // origin
    anchor: new google.maps.Point(50, 50) // anchor
};
    let { id, latitude, longitude, price_per_day } = spot;
    const position = new google.maps.LatLng( latitude, longitude);
    const marker = new google.maps.Marker({
      position,
      map: this.map,
      spotId: id,
      icon: test,
      price: price_per_day,
      label: {
      text: `$${price_per_day}`,
      color: 'black',
      fontSize: '15px',
      fontWeight: 'bold'
    }

    });
    // this.markers[id] = marker;

  // const content = `
  //     <div class="price-marker" ref="${id}">
  //       <div>$${ price_per_day }</div>
  //      </div>
  //   `;
  //
  // const infowindow = new google.maps.InfoWindow({
  //     maxWidth: 100,
  //     content: content,
  //     disableAutoPan: true,
  //     position: position,
  //     zIndex: 5
  //   });
  //
  //   infowindow.open(this.map);
  //
  //
  //   return {
  //     spotId: id,
  //     marker,
  //     infowindow
  //   };
  }

  removeMarker(marker) {
    this.markers[marker.spotId].setMap(null);
    delete this.markers[marker.spotId];
  }

}
