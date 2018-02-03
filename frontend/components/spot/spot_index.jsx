import React from 'react';
import SpotIndexItem from './spot_index_item';

class SpotIndex extends React.Component {

  componentDidMount() {
    this.props.fetchSpots();
  }

  render() {

    const { spots } = this.props;
    debugger
    const spotItem = spots.map(spot => <SpotIndexItem key={spot.id} spot={spot} />);
    return (
      <ul>
        {spotItem}
      </ul>
    );
  }
}

export default SpotIndex;
