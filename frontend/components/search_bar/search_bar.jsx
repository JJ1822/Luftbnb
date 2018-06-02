import React from 'react';

class SpotAutocomplete extends React.Component {

  componentDidMount() {
    var input = document.getElementById('searchbar');
    var options = {componentRestrictions: {country: 'us'}};
    let autoComplete = new google.maps.places.  Autocomplete(input, options);

    autoComplete.addListener('place_changed', () => {
      let place = autoComplete.getPlace();
      let location = place.geometry.location;
      this.props.update(location)
    });
  }



  render() {
    return (
      <div className="autoComplete-form">
        <input id="searchbar" placeholder="Search for a City"
           type="text"></input>
      </div>
    );
  }

}

export default SpotAutocomplete;
