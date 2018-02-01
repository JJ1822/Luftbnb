import React from 'react';
import {Link, withRouter} from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      first_name: "",
      last_name: "",
      password: "",
      bday: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);

    this.year = "";
    this.month = "";
    this.day = "";
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push('/');
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  navLink() {
    if (this.props.formType === 'login') {
      return <Link to="/signup">Sign up</Link>;
    } else {
      return <Link to="/login">Log in</Link>;
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  render() {
    let statement = this.props.formType === 'signup' ? 'Already have a Luftbnb account?' : "Don't have an account?";
    let header = this.props.formType === 'signup' ? 'Sign up' : 'Log in to continue';
    let nameDiv = () => { if(this.props.formType === 'signup') {
      return (
          <div>
            <input
              type="text"
              placeholder="First name"
              value={this.state.first_name}
              onChange={this.update('first_name')}
              />
            <input
              type="text"
              placeholder="Last name"
              value={this.state.last_name}
              onChange={this.update('last_name')}
              />
          </div>
        );
      } else return null;
    };

    let birthdayDiv = () => { if(this.props.formType === 'signup') {
      return (
          <div>
            <span>Birthday</span>
            <span>To sign up, you must be 18 or older. Other people won't see your birthday.</span>
            <select>
              <option value="disabled">Month</option>
              <option value={this.month}>January</option>
              <option value={this.month}>February</option>
            </select>
            <select>
              <option value="disabled">Day</option>
              <option value={this.day}>1</option>
              <option value={this.day}>2</option>
            </select>
            <select>
              <option value="disabled">Year</option>
              <option value={this.year}>2018</option>
              <option value={this.year}>2017</option>
            </select>
          </div>
        );
      } else return null;
    };

    return (
      <div>
        <h1>{header}</h1>
        <form onSubmit={this.handleSubmit}>
          <input
            type="email"
            placeholder="Email address"
            value={this.state.email}
            onChange={this.update('email')}
            />
          { nameDiv() }
            <input
              type="password"
              placeholder="Password"
              value={this.state.password}
              onChange={this.update('password')}
              />
            { birthdayDiv() }
          <button type="submit">Submit</button>
        </form>
        <h3>{statement} {this.navLink()}</h3>
      </div>
    );
  }
}

export default withRouter(SessionForm);
