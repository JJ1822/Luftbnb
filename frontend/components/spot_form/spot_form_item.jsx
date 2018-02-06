import React from 'react';

const SpotFormItem = () => {
  return(
    <div className="spot-options">
      <select>
        <option value="disabled">Room Type</option>
        <option >Entire home</option>
        <option >Entire apartment</option>
        <option >Shared room</option>
        <option >Private room</option>
      </select>
      <select>
        <option value="disabled">Number of guests</option>
        <option>1 guest</option>
        <option>2 guests</option>
        <option>3 guests</option>
        <option>4 guests</option>
        <option>5 guests</option>
        <option>6 guests</option>
        <option>7 guests</option>
        <option>8 guests</option>
        <option>9 guests</option>
        <option>10 guests</option>
        <option>11 guests</option>
        <option>12 guests</option>
      </select>
      <select>
        <option value="disabled">Number of beds</option>
        <option>1 bed</option>
        <option>2 beds</option>
        <option>3 beds</option>
        <option>4 beds</option>
        <option>5 beds</option>
        <option>6 beds</option>
        <option>7 beds</option>
        <option>8 beds</option>
        <option>9 beds</option>
        <option>10 beds</option>
      </select>
      <select>
        <option value="disabled">Number of bedrooms</option>
        <option>1 bedroom</option>
        <option>2 bedrooms</option>
        <option>3 bedrooms</option>
        <option>4 bedrooms</option>
        <option>5 bedrooms</option>
        <option>6 bedrooms</option>
        <option>7 bedrooms</option>
        <option>8 bedrooms</option>
        <option>9 bedrooms</option>
        <option>10 bedrooms</option>
      </select>
      <select>
        <option value="disabled">Number of bathrooms</option>
        <option>1 bathroom</option>
        <option>2 bathrooms</option>
        <option>3 bathrooms</option>
        <option>4 bathrooms</option>
        <option>5 bathrooms</option>
      </select>
      <div className="amenities">
        <label className="container">Wifi
          <input type="checkbox" />
          <span className="checkmark"></span>
        </label>
        <label className="container">Kitchen
          <input type="checkbox"/>
          <span className="checkmark"></span>
        </label>

        <label className="container">Essentials
          <input type="checkbox"/>
          <span className="checkmark"></span>
        </label>

        <label className="container">Pool
          <input type="checkbox"/>
          <span className="checkmark"></span>
        </label>

        <label className="container">Gym
          <input type="checkbox"/>
          <span className="checkmark"></span>
        </label>

        <label className="container">Patio
          <input type="checkbox"/>
          <span className="checkmark"></span>
        </label>

        <label className="container">Washer/Dryer
          <input type="checkbox"/>
          <span className="checkmark"></span>
        </label>

        <label className="container">Heating
          <input type="checkbox"/>
          <span className="checkmark"></span>
        </label>

        <label className="container">Air Conditioning
          <input type="checkbox"/>
          <span className="checkmark"></span>
        </label>

      </div>
      <div className="name-div">
        <input
          type="text"
          placeholder="Title of your listing"
          />
        <textarea
          placeholder="Please describe your listing"
          />

      </div>
    </div>
  );
};

export default SpotFormItem;
