import React from 'react';
import MarkerManager from '../../util/marker_manager';

const mapOptions = {
  center: { lat: 37.7758, lng: -122.453 },
  zoom: 12
};

class SpotMap extends React.Component {

  componentDidMount() {
    this.map = new google.maps.Map(this.mapNode, mapOptions);
     this.MarkerManager = new MarkerManager(this.map);
     this.MarkerManager.updateMarkers(this.props.spots);
  }

  componentDidUpdate() {
    this.MarkerManager.updateMarkers(this.props.spots);
  }

  render() {
    return (
      <div className="map-container" ref={ map => this.mapNode = map }>

      </div>
    );
  }

}
export default SpotMap;
