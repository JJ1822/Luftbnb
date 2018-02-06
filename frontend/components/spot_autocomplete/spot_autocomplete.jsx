import React from 'react';

class SpotAutocomplete extends React.Component {

  componentDidMount() {
    var input = document.getElementById('autocomplete');
    var options = {componentRestrictions: {country: 'us'}};
    new google.maps.places.Autocomplete(input, options);

  }

  render() {
    return (
      <div className="autoComplete-form">
        <input id="autocomplete" placeholder="Enter your address"
           type="text"></input>
      </div>
    );
  }

}

export default SpotAutocomplete;
