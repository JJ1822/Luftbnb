import React from 'react';
import { Link } from 'react-router-dom';

const SpotIndexItem = ({ spot }) => {
  return (
    <Link to={`spots/${spot.id}`}>
      <div className="spot-index-item">
          <img className="spot-index-image" src={spot.img_url}/>
        <div className="spot-index-type">
          <span className="type">{spot.room_type}<span className="dot">-</span>{spot.num_beds}</span>

        </div>
        <div className="spot-index-name">
          <h2>Malibu Dream Airstream</h2>
        </div>
        <div className="spot-index-rating">
          <span>From ${spot.price_per_day} per night</span>
        </div>
      </div>
    </Link>
  );
};

export default SpotIndexItem;
