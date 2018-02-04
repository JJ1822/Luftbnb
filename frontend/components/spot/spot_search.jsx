import React from 'react';
import SpotMap from './spot_map';
import SpotIndex from './spot_index';

class SpotSearch extends React.Component {

  render() {
    const {spots, fetchSpots} = this.props;
    console.log(this.props);
    return (
      <div>
        <SpotMap
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
