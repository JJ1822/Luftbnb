import React from 'react';

class SearchBar extends React.Component {

  componentDidMount() {
    var input = document.getElementById('searchbar');
    var options = {
                    types: ['(cities)'],
                    componentRestrictions: {country: 'us'}
                  };
    let autoComplete = new google.maps.places.Autocomplete(input, options);

    autoComplete.addListener('place_changed', () => {
      let place = autoComplete.getPlace();
      let location = place.geometry.location;
      this.props.update(location)
    });
  }



  render() {
    return (
      <div className="search-bar">
        <input id="searchbar" placeholder="Search for a City"
           type="text"></input>
      </div>
    );
  }

}

export default SearchBar;
