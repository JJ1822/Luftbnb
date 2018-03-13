import React from 'react';
import SpotAutocomplete from '../spot_autocomplete/spot_autocomplete';
import SpotFormItem from './spot_form_item';
import Slider from 'react-rangeslider-extended';


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
      amenities: [],
      num_guests: "",
      num_beds: "",
      num_bedrooms: "",
      img_url: "",
      author_id: "",
      num_bathrooms: "",
      guests: 0,
      beds: 0,
      bathrooms: 0
    };


    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
    this.bedsNeg = this.bedsNeg.bind(this);
    this.bedsPos = this.bedsPos.bind(this);
    this.guestNeg = this.guestNeg.bind(this);
    this.guestPos = this.guestPos.bind(this);
    this.bathroomNeg = this.bathroomNeg.bind(this);
    this.bathroomPos = this.bathroomPos.bind(this);
  }

  componentDidMount() {

  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });

  }

  updateAmen(e, value) {
    if (e.target.checked){
     //append to array
      this.setState({
        amenities: this.state.amenities.concat([value])
      })
    } else {
     //remove from array
      this.setState({
        amenities : this.state.amenities.filter(function(val) {return val!==value})
      })
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const spot = Object.assign({}, this.state);
    this.props.createSpot(spot);
  }

  guestPos(e) {
    e.preventDefault();
    if(this.state.guests < 50) {
      this.setState({
        guests: this.state.guests + 1
      });
    }
  }

  guestNeg(e) {
    e.preventDefault();
    if(this.state.guests > 0) {
      this.setState({
        guests: this.state.guests - 1
      });
    }
  }

  bedsPos(e) {
    e.preventDefault();
    if(this.state.beds < 50) {
      this.setState({
        beds: this.state.beds + 1
      });
    }
  }

  bedsNeg(e) {
    e.preventDefault();
    if(this.state.beds > 0) {
      this.setState({
        beds: this.state.beds - 1
      });
    }
  }

  bathroomPos(e) {
    e.preventDefault();
    if(this.state.bathrooms < 50) {
      this.setState({
        bathrooms: this.state.bathrooms + 1
      });
    }
  }

  bathroomNeg(e) {
    e.preventDefault();
    if(this.state.bathrooms > 0) {
      this.setState({
        bathrooms: this.state.bathrooms - 1
      });
    }
  }





  // renderErrors() {
  //     return (
  //       <ul className="login-errors" >
  //         {this.props.errors && this.props.errors.map((error, i) => (
  //           <li key={`error-${i}`}>{error}</li>
  //         ))}
  //       </ul>
  //     );
  //   }

  render() {
    return (
      <div className="spot-main-form">

        <div className="title">Hi, <span>{this.props.user.first_name}!</span> Let's list your space.</div>
        <h3>Where's your place located?</h3>
        <form onSubmit={this.handleSubmit}>
            <SpotAutocomplete />
        <h3>Tell us about your place.</h3>
            <div className="spot-options">
              <div className="name-div">
                <input
                  type="text"
                  placeholder="Title of your listing"
                  onChange={this.update('name')}
                  value={this.state.name}
                  />
                <textarea
                  placeholder="Please describe your listing"
                  onChange={this.update('description')}
                  value={this.state.description}
                  />
                  <select onChange={this.update('room_type')}>
                  <option value="disabled">Room Type</option>
                  <option value="Entire home">Entire home</option>
                  <option value="Entire apartment">Entire apartment</option>
                  <option value="Shared room">Shared room</option>
                  <option value="Private room">Private room</option>
                </select>
              </div>
              <div className="info-input">
                <h3>How many guests can your place accommodate?</h3>
                <div className="guests">
                  <span>Guests</span>

                <div className="mindiv">
                  <button
                    className="minus"
                    value="button"
                    onClick={this.guestNeg}
                    ><img src={window.staticImages.minusImage}/></button>
                </div>
                <div className="counternum">{this.state.guests}</div>
                  <div className="posdiv">
                    <button
                      className="plus"
                      value="button"
                      onClick={this.guestPos}
                      ><img src={window.staticImages.plusImage}/></button>
                  </div>
                </div>
                <SpotFormItem update={this.update}/>
                  <span className="span">How many beds can guests use?</span>
                  <div className="beds">
                    <span>Beds</span>

                  <div className="mindiv">
                    <button
                      className="minus"
                      onClick={this.bedsNeg}
                      ><img src={window.staticImages.minusImage}/></button>
                  </div>
                  <div className="counternum">{this.state.beds}</div>
                    <div className="posdiv">
                      <button
                        className="plus"
                        onClick={this.bedsPos}
                        ><img src={window.staticImages.plusImage}/></button>
                    </div>
                  </div>
                  <h3>How many bathrooms?</h3>
                  <div className="bathrooms">
                    <span>Bathrooms</span>

                  <div className="mindiv">
                    <button
                      className="minus"
                      onClick={this.bathroomNeg}
                      ><img src={window.staticImages.minusImage}/></button>
                  </div>
                  <div className="counternum">{this.state.bathrooms}</div>
                    <div className="posdiv">
                      <button
                        className="plus"
                        onClick={this.bathroomPos}
                        ><img src={window.staticImages.plusImage}/></button>
                    </div>
                  </div>
              </div>
                <h3 className="amen">What amenities do you offer?</h3>
              <div className="amenities">
                <label className="container control--checkbox">Wifi
                  <input onClick={(e)=>this.updateAmen(e,"Wifi")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>
                <label className="container control--checkbox">Kitchen
                  <input onClick={(e)=>this.updateAmen(e,"Kitchen")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>

                <label className="container control--checkbox">Essentials
                  <input onClick={(e)=>this.updateAmen(e,"Essentials")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>

                <label className="container control--checkbox">Pool
                  <input onClick={(e)=>this.updateAmen(e,"Pool")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>

                <label className="container control--checkbox">Gym
                  <input onClick={(e)=>this.updateAmen(e,"Gym")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>

                <label className="container control--checkbox">Patio
                  <input onClick={(e)=>this.updateAmen(e,"Patio")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>

                <label className="container control--checkbox">Washer/Dryer
                  <input onClick={(e)=>this.updateAmen(e,"Washer/Dryer")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>

                <label className="container control--checkbox">Heating
                  <input onClick={(e)=>this.updateAmen(e,"Heating")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>

                <label className="container control--checkbox">Air Conditioning
                  <input onClick={(e)=>this.updateAmen(e,"Air Conditioning")} type="checkbox" />
                  <div className="checkmark"></div>
                </label>

              </div>

            </div>
            <div className="divforprice">
              <div className="dollar">
                <span>$</span>
              </div>
              <input
                type="text"
                placeholder="Price per/night"
                onChange={this.update('price_per_day')}
                value={this.state.price_per_day}
                className="price"
                />
            </div>
            <button className="button" type="submit">Submit</button>
          </form>
      </div>
    );
  }
}

export default SpotForm;
