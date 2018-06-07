import React from 'react';

class SearchBar extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      place: ""
    }
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

    autoComplete.addListener('place_changed', () => {
      let place = autoComplete.getPlace();
      let location = place.geometry.location;
      this.setState({
        place: place.formatted_address
      });

    });
  }
  //
  update(field) {
  //
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleKeyPress() {
    console.log(this);
    // this.props.history.push("/city/")
  }



  render() {
    return (
      <div className="search-bar">
        <input id="searchbar" placeholder="Search for a City" value={this.state.place}
           type="text" onKeyPress={this.handleKeyPress} onChange={this.update('place')} ></input>
      </div>
    );
  }

}

export default SearchBar;
