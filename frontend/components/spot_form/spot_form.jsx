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

        <div className="spot-form">
          <span>Hi, {this.props.user.first_name}! Let's list your space.</span>
          <h3>Where's your place located?</h3>
          <form>

            <SpotAutocomplete state={this.state}/>
            <SpotIndexItem />
            <button type="submit">Submit</button>
          </form>
        </div>
      </div>
    );
  }
}

export default SpotForm;
