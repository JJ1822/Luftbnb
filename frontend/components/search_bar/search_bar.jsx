import React from 'react';

class SearchBar extends React.Component {

  constructor(props) {
    super(props);
    this.test;
    this.handleKeyPress = this.handleKeyPress.bind(this);
    // this.update = this.update.bind(this);
  }

  componentDidMount() {
    var input = document.getElementById('searchbar');
    var options = {
                    types: ['(cities)'],
                    componentRestrictions: {country: 'us'}
                  };
    let autoComplete = new google.maps.places.Autocomplete(input, options);
    this.test = autoComplete;
    autoComplete.addListener('place_changed', () => {
      let place = autoComplete.getPlace();
      let location = place.geometry.location;
      this.props.update(location);
    });
  }

  handleKeyPress(e) {
    // e.preventDefault();
    // if (e.key === 'Enter') {
    //   console.log(this);
    //
    //       this.props.history.push(`/city/${this.props.lat}`)
    // }
  }

  render() {
    return (
      <div className="search-bar">
        <input id="searchbar" placeholder="Search for a City"
           type="text" onKeyPress={this.handleKeyPress}  ></input>
      </div>
    );
  }

}

export default SearchBar;
