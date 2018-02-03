import React from 'react';

class SpotIndex extends React.Component {

  componentDidMount() {
    this.props.fetchSpots();
  }

  render() {
    const { spots } = this.props;
    const spotItem = spots.map(spot => <li>{spot.room_type}</li>);
    return (
      <ul>
        {spotItem}
      </ul>
    );
  }
}
