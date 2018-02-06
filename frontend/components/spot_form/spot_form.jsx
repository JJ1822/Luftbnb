import React from 'react';
import SpotAutocomplete from '../spot_autocomplete/spot_autocomplete';

class SpotForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      latitude: "",
      longitude: "",
      room_type: "",
      price_per_day: "",
      description: "",
      amenities: "",
      num_guests: "",
      num_beds: "",
      num_bedrooms: "",
      img_url: "",
      user_id: ""
    };
  }

  componentDidMount() {

  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const spot = Object.assign({}, this.state);
    this.props.createSpot(spot);
  }

  render() {
    return (
      <div className="spot-main-form">
        <div className="spot-form">
          <span>Hi, name! Let's list your space.</span>
          <h3>Where's your place located?</h3>
          <SpotAutocomplete />
        </div>
      </div>
    );
  }
}

export default SpotForm;
