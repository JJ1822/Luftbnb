import React from 'react';
import {withRouter} from 'react-router'
import MarkerManager from '../../util/marker_manager';

// const mapOptions = {
//   sanfrancisco: { center: { lat: 37.778839, lng: -122.428188 }, zoom: 13},
//   austin: { center: { lat: 40.778839, lng: -130.428188 }, zoom: 13}
// };
//
// let city = this.props.match.params.city;

class SpotMap extends React.Component {
  constructor(props) {
    super(props);
    this.mapOptions = {
      sanfrancisco: { center: { lat: 37.778839, lng: -122.428188 }, zoom: 13},
      austin: { center: { lat: 30.271633, lng: -97.744802 }, zoom: 13},
      sandiego: { center: { lat: 32.715952, lng: -117.160570 }, zoom: 13},
      losangeles: { center: { lat: 34.043709, lng: -118.247979 }, zoom: 13},
      denver: { center: { lat: 39.742881, lng: -104.987526 }, zoom: 13},
      houston: { center: { lat: 29.757229, lng: -95.361977 }, zoom: 13}
    };
    this.city = this.props.match.params.city;
  }
  componentDidMount() {

    this.map = new google.maps.Map(this.refs.map, this.mapOptions[this.city]);
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
    console.log(this);
    return (
      <div className="map-container" ref="map">
        Map
      </div>
    );
  }

}
export default withRouter(SpotMap);
