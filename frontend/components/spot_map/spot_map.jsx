import React from 'react';
import {withRouter} from 'react-router'
import MarkerManager from '../../util/marker_manager';
import queryString from 'query-string';

// const mapOptions = {
//   sanfrancisco: { center: { lat: 37.778839, lng: -122.428188 }, zoom: 13},
//   austin: { center: { lat: 40.778839, lng: -130.428188 }, zoom: 13}
// };
//
// let city = this.props.match.params.city;

class SpotMap extends React.Component {
  constructor(props) {
    super(props);
    this.Lat = parseFloat(queryString.parse(this.props.location.search).lat);
    this.Lng = parseFloat(queryString.parse(this.props.location.search).lng);


    this.city = {
      center: { lat: this.Lat, lng: this.Lng }, zoom: 13
    }
  }
  componentDidMount() {
    var Lat = parseFloat(queryString.parse(this.props.location.search).lat);
    var Lng = parseFloat(queryString.parse(this.props.location.search).lng);
    var city = {
      center: { lat: Lat, lng: Lng }, zoom: 13
    }

    this.map = new google.maps.Map(this.refs.map, city);

     this.MarkerManager = new MarkerManager(this.map);
     this.registerListeners();
     // console.log(this.MarkerManager);
     // this.MarkerManager.updateMarkers(this.props.spots);
  }

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
export default withRouter(SpotMap);
