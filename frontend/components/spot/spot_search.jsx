import React from 'react';
import SpotMap from './spot_map';
import SpotIndex from './spot_index';

class SpotSearch extends React.Component {

  render() {
    const {spots, fetchSpots} = this.props;
    return (
      <div>
        <SpotMap
          spots={spots}
          fetchSpots={fetchSpots}
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
