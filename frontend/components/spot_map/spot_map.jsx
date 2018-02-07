import React from 'react';
import MarkerManager from '../../util/marker_manager';

const mapOptions = {
  center: { lat: 37.7758, lng: -122.453 },
  zoom: 13
};

class SpotMap extends React.Component {

  componentDidMount() {

    this.map = new google.maps.Map(this.refs.map, mapOptions);
    console.log(this.map);
     this.MarkerManager = new MarkerManager(this.map);
     this.registerListeners();
  }
  // this.MarkerManager.updateMarkers(this.props.spots);

  componentDidUpdate() {
    this.MarkerManager.updateMarkers(this.props.spots);
  }

  registerListeners() {
    this.listener = google.maps.event.addListener(this.map, 'idle', () => {
      const { north, south, east, west } = this.map.getBounds().toJSON();
      const bounds = {
        northEast: { latitude: north, longitude: east },
        southWest: { latitude: south, longitude: west }
      };
      this.props.updateBounds(bounds);
    });
  }

  componentWillUnmount() {

    google.maps.event.removeListener(this.listener);
  }

  render() {
    console.log("I'm loading the map!");
    return (
      <div className="map-container" ref="map">
        Map
      </div>
    );
  }

}
export default SpotMap;
