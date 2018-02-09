import React from 'react';
import ReviewFormContainer from './review_container';
import ReviewDetail from './review_detail';

class SpotShow extends React.Component {

  componentDidMount() {
    if(!this.props.spot) {
      this.props.fetchSpot(parseInt(this.props.match.params.spotId));
    }
  }
  render() {
    debugger
    const { spot, spotId, fetchSpot } = this.props;
    if(!spot) {
      return null;
    }
    const amen = spot.amenities.map(am => <li className="amenit">{am}</li>);
    return (
      <div className="spot-grid">
        <div className="spot-show">
          <img src={spot.img_url}></img>
        </div>
        <div className="show-heading">
          <span>{spot.room_type}</span>
          <h1>{spot.name}</h1>
          <div className="show-details">
            <span>{spot.num_guests}</span>
            <span>{spot.num_bedrooms}</span>
            <span>{spot.num_beds}</span>
            <span>{spot.num_bathrooms}</span>
          </div>
          <div className="show-description">
            <h3>The space</h3>
            <p>{spot.description}</p>
            <div className="show-amentities">
              <h3>Amenities</h3>
              <div className="amen">
                {amen}
              </div>

            </div>
          </div>
          <ReviewFormContainer />
        </div>
      </div>
    );
  }
}

export default SpotShow;

// <ReviewDetail reviews={this.props}/>
