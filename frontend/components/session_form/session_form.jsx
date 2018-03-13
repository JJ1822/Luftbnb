import React from 'react';
import {Link, withRouter} from 'react-router-dom';
import Modal from 'react-modal';

const customStyles = {
    overlay: {
      position: 'fixed',
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      backgroundColor: 'rgba(0, 0, 0, 0.7)'
    },
    content: {
      position: 'absolute',
      top: '90px',
      height: '580px',
      width: '470px',
      border: '1px solid #ccc',
      background: '#fff',
      overflow: 'visible',
      WebkitOverflowScrolling: 'touch',
      outline: 'none',
      padding: '20px'
    }
  };

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      first_name: "",
      last_name: "",
      password: "",
      bday: "",
      modalIsOpen: true
    };


    this.demoUser = this.demoUser.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);

    this.year = "";
    this.month = "";
    this.day = "";

    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
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
      return <Link onClick={this.closeModal} to="/signup">Sign up</Link>;
    } else {
      return <Link onClick={this.closeModal} to="/login">Log in</Link>;
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }


  demoUser(e) {
    e.preventDefault();
    const demo = Object.assign({}, { email: "ILovetoCreateCoolStuff@gmail.com", first_name: "Jay Johnson", password: "password" });
    this.props.processForm(demo);

  }

  openModal() {
    this.setState({modalIsOpen: true});
  }

  closeModal() {
    this.setState({modalIsOpen: false});
    this.props.history.push('/');
    this.props.clearErrors();
  }

  renderErrors() {
      return (
        <ul className="login-errors" >
          {this.props.errors && this.props.errors.map((error, i) => (
            <li key={`error-${i}`}>{error}</li>
          ))}
        </ul>
      );
  }

  // afterOpenModal() {
  //   this.subtitle.style.color = '#f00';
  // }

  render() {
    let statement = this.props.formType === 'signup' ? 'Already have a Luftbnb account?' : "Don't have an account?";
    let header = this.props.formType === 'signup' ? 'Sign up' : 'Log in to continue';
    customStyles.content.height = this.props.formType === 'signup' ? '580px' : '380px';
    let demo = () => { if(this.props.formType === 'login') {
      return (
          <button onClick={this.demoUser} >Demo</button>
        );
      }
    };
    let nameDiv = () => { if(this.props.formType === 'signup') {
      return (
          <div className="name">
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
          <div className="birthday-div">
            <span className="birthday">Birthday</span>
            <span className="birthday-text">To sign up, you must be 18 or older. Other people won't see your birthday.</span>
          <div className="bday">
            <select>
              <option disabled>Month</option>
              <option value={this.month}>January</option>
              <option value={this.month}>February</option>
            </select>
            <select>
              <option disabled selected="disabled">Day</option>
              <option value={this.day}>1</option>
              <option value={this.day}>2</option>
            </select>
            <select>
              <option disabled selected="disabled">Year</option>
              <option value={this.year}>2018</option>
              <option value={this.year}>2017</option>
            </select>
          </div>
          </div>
        );
      } else return null;
    };

    return (
      <div>
        <Modal
          isOpen={this.state.modalIsOpen}
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          style={customStyles}
          className="modal"
        >

        <h1 className="login-header">{header}</h1>
        <form className="login-form" onSubmit={this.handleSubmit}>
          <span onClick={this.closeModal} className="modal-close">&times;</span>
          {this.renderErrors()}
          <input
            type="email"
            placeholder="Email address"
            value={this.state.email}
            onChange={this.update('email')}
            className="email"
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
          { demo() }
        </form>
        <h3 className="login-footer">{statement} {this.navLink()}</h3>
        </Modal>
      </div>
    );
  }
}

export default withRouter(SessionForm);
