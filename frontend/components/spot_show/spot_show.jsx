import React from 'react';

const SpotShow = ({ spot, spotId, fetchSpot }) => {
  debugger


  return (
    <div className="spot-show">
      <img src={spot.img_url}></img>
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
      </div>
      </div>
      </div>
    </div>
  );
};

export default SpotShow;
