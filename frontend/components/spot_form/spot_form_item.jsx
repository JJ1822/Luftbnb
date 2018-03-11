import React from 'react';

const SpotFormItem = (state) => {
  console.log(state);
  return(
    <div className="spot-options">
      <div className="name-div">
        <input
          type="text"
          placeholder="Title of your listing"
          value={this.state.name}
          />
        <textarea
          placeholder="Please describe your listing"
          value={this.state.description}
          />
      </div>
      <div>
        <h3>How many guests can your place accommodate?</h3>
        <div>
          <span>Guests</span>
        </div>
        <div>
          <button></button>
        </div>
        <div>5</div>
        <div>
          <button></button>
        </div>
      </div>

      <div className="amenities">
        <label className="container control--checkbox">Wifi
          <input type="checkbox" value={this.state.amenities}  />
          <div className="checkmark"></div>
        </label>
        <label className="container control--checkbox">Kitchen
          <input type="checkbox" value={this.state.amenities} />
          <div className="checkmark"></div>
        </label>

        <label className="container control--checkbox">Essentials
          <input type="checkbox" value={this.state.amenities} />
          <div className="checkmark"></div>
        </label>

        <label className="container control--checkbox">Pool
          <input type="checkbox" value={this.state.amenities} />
          <div className="checkmark"></div>
        </label>

        <label className="container control--checkbox">Gym
          <input type="checkbox" value={this.state.amenities} />
          <div className="checkmark"></div>
        </label>

        <label className="container control--checkbox">Patio
          <input type="checkbox" value={this.state.amenities} />
          <div className="checkmark"></div>
        </label>

        <label className="container control--checkbox">Washer/Dryer
          <input type="checkbox" value={this.state.amenities} />
          <div className="checkmark"></div>
        </label>

        <label className="container control--checkbox">Heating
          <input type="checkbox" value={this.state.amenities} />
          <div className="checkmark"></div>
        </label>

        <label className="container control--checkbox">Air Conditioning
          <input type="checkbox" value={this.state.amenities} />
          <div className="checkmark"></div>
        </label>

      </div>

    </div>
  );
};

export default SpotFormItem;

// <select>
//   <option value="disabled">Room Type</option>
//   <option value={this.room_type}>Entire home</option>
//   <option value={this.room_type}>Entire apartment</option>
//   <option value={this.room_type}>Shared room</option>
//   <option value={this.room_type}>Private room</option>
// </select>
// <select>
//   <option value="disabled">Number of guests</option>
//   <option value={this.num_guests}>1 guest</option>
//   <option value={this.num_guests}>2 guests</option>
//   <option value={this.num_guests}>3 guests</option>
//   <option value={this.num_guests}>4 guests</option>
//   <option value={this.num_guests}>5 guests</option>
//   <option value={this.num_guests}>6 guests</option>
//   <option value={this.num_guests}>7 guests</option>
//   <option value={this.num_guests}>8 guests</option>
//   <option value={this.num_guests}>9 guests</option>
//   <option value={this.num_guests}>10 guests</option>
//   <option value={this.num_guests}>11 guests</option>
//   <option value={this.num_guests}>12 guests</option>
// </select>
// <select>
//   <option value="disabled">Number of beds</option>
//   <option value={this.num_beds}>1 bed</option>
//   <option value={this.num_beds}>2 beds</option>
//   <option value={this.num_beds}>3 beds</option>
//   <option value={this.num_beds}>4 beds</option>
//   <option value={this.num_beds}>5 beds</option>
//   <option value={this.num_beds}>6 beds</option>
//   <option value={this.num_beds}>7 beds</option>
//   <option value={this.num_beds}>8 beds</option>
//   <option value={this.num_beds}>9 beds</option>
//   <option>10 beds</option>
// </select>
// <select>
//   <option value="disabled">Number of bedrooms</option>
//   <option>1 bedroom</option>
//   <option>2 bedrooms</option>
//   <option>3 bedrooms</option>
//   <option>4 bedrooms</option>
//   <option>5 bedrooms</option>
//   <option>6 bedrooms</option>
//   <option>7 bedrooms</option>
//   <option>8 bedrooms</option>
//   <option>9 bedrooms</option>
//   <option>10 bedrooms</option>
// </select>
// <select>
//   <option value="disabled">Number of bathrooms</option>
//   <option>1 bathroom</option>
//   <option>2 bathrooms</option>
//   <option>3 bathrooms</option>
//   <option>4 bathrooms</option>
//   <option>5 bathrooms</option>
// </select>
