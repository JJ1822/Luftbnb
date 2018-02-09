import React from 'react';
import MarkerManager from '../../util/marker_manager';

const mapOptions = {
  center: { lat: 37.778839, lng: -122.428188 },
  zoom: 13
};

class SpotMap extends React.Component {

  componentDidMount() {

    this.map = new google.maps.Map(this.refs.map, mapOptions);
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
    return (
      <div className="map-container" ref="map">
        Map
      </div>
    );
  }

}
export default SpotMap;
