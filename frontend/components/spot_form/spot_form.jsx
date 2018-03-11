import React from 'react';
import SpotAutocomplete from '../spot_autocomplete/spot_autocomplete';
import SpotIndexItem from './spot_form_item';

class SpotForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      latitude: "",
      longitude: "",
      room_type: "",
      price_per_day: "",
      name: "",
      description: "",
      amenities: "",
      num_guests: "",
      num_beds: "",
      num_bedrooms: "",
      img_url: "",
      author_id: "",
      num_bathrooms: ""
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

  onClick(e) {
    e.preventDefault();

  }

  // renderErrors() {
  //     return (
  //       <ul className="login-errors" >
  //         {this.props.errors && this.props.errors.map((error, i) => (
  //           <li key={`error-${i}`}>{error}</li>
  //         ))}
  //       </ul>
  //     );

  render() {
    console.log(this.state);
    return (
      <div className="spot-main-form">
        <span>Hi, {this.props.user.first_name}! Let's list your space.</span>
        <h3>Where's your place located?</h3>
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
                  <button className="plus"></button>
                </div>
                <div>5</div>
                <div>
                  <button className="minus"></button>
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

            <button type="submit">Submit</button>
      </div>
    );
  }
}

export default SpotForm;
