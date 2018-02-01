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
      top: '60px',
      left: '465px',
      right: '465px',
      bottom: '110px',
      border: '1px solid #ccc',
      background: '#fff',
      overflow: 'auto',
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


    this.handleSubmit = this.handleSubmit.bind(this);

    this.year = "";
    this.month = "";
    this.day = "";

    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  componentDidMount() {

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

  openModal() {
    this.setState({modalIsOpen: true});
  }

  closeModal() {
    this.setState({modalIsOpen: false});
    this.props.history.push('/');
  }

  // afterOpenModal() {
  //   this.subtitle.style.color = '#f00';
  // }

  render() {
    let statement = this.props.formType === 'signup' ? 'Already have a Luftbnb account?' : "Don't have an account?";
    let header = this.props.formType === 'signup' ? 'Sign up' : 'Log in to continue';
    console.log(customStyles.content.bottom);
    customStyles.content.bottom = this.props.formType === 'signup' ? '110px' : '375px';
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
        <h3 className="login-footer">{statement} {this.navLink()}</h3>
        </Modal>
      </div>
    );
  }
}

export default withRouter(SessionForm);
