import React from 'react';
import SpotMap from '../spot_map/spot_map';
import SpotIndex from './spot_index';

class SpotSearch extends React.Component {

  render() {
    const {spots, fetchSpots, updateBounds } = this.props;
    return (
      <div>
        <SpotMap
          spots={spots}
          updateBounds={updateBounds}
          />
        <SpotIndex
          spots={spots}
          fetchSpots={fetchSpots}
          />
      </div>
    );
  }
}

export default SpotSearch;
