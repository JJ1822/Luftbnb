import React from 'react';

const SpotFormItem = ({update}) => {

  return(
    <div className="spot-options">
      <span className="span">How many bedrooms can guests use?</span>
      <div className="select">

      <select onChange={update('num_bedrooms')} selected="selected">
        <option value="1 bedroom" selected>1 bedroom</option>
        <option value="2 bedrooms">2 bedrooms</option>
        <option value="3 bedrooms">3 bedrooms</option>
        <option value="4 bedrooms">4 bedrooms</option>
        <option value="5 bedrooms">5 bedrooms</option>
        <option value="6 bedrooms">6 bedrooms</option>
        <option value="7 bedrooms">7 bedrooms</option>
        <option value="8 bedrooms">8 bedrooms</option>
        <option value="9 bedrooms">9 bedrooms</option>
        <option value="10 bedrooms">10 bedrooms</option>
      </select>
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
