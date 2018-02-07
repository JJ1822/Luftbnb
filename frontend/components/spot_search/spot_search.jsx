import React from 'react';
import SpotMap from '../spot_map/spot_map';
import SpotIndex from './spot_index';

class SpotSearch extends React.Component {



  render() {
    const {spots, bounds, fetchSpots, updateBounds } = this.props;
    return (
      <div>
        <div className="spot-index-container">
          <SpotIndex
            spots={spots}
            bounds={bounds}
            updateBounds={updateBounds}
            />


          <SpotMap
            spots={spots}
            updateBounds={updateBounds}
          />
        </div>
      </div>
    );
  }
}

export default SpotSearch;
