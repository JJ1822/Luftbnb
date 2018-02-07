import React from 'react';
import { Link } from 'react-router-dom';
import Modal from 'react-modal';

class MainPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      modalIsOpen: false
    };
    this.openModal = this.openModal.bind(this);
  }

  loginLink() {
    if(this.props.currentUser) {
      return (
        <div className="header-list">
          <div className="link-item"><Link to="/host">Become a host</Link></div>
          <div className="link-item"><Link to="/">Trips</Link></div>
          <div className="link-item"><Link onClick={this.props.logout} to="/">Log out</Link></div>
        </div>
      );
    } else {
      return (
        <div className="header-list">
          <div className="link-item"><Link to="">Become a host</Link></div>
          <div className="link-item"><Link onClick={this.openModal} to="/signup">Sign up</Link></div>
          <div className="link-item"><Link onClick={this.openModal} to="/login">Log In</Link></div>
        </div>
        );
      }
  }

  openModal() {
    this.setState({modalIsOpen: true});
  }

  render() {
      return(

      <div className="freeze">
        <header className="header">
          <nav className="header-nav">

            <h1 className="header-logo">
              <img src={window.staticImages.headerImage}></img>
            </h1>

            {this.loginLink()}
          </nav>
        </header>
      </div>

    );
  }
}

export default MainPage;
// const noUser = () => (
//  <h1>No User!!!!</h1>
// );
//
// const user = (currentUser, logout) => (
//   <div>
//     <h1>Hi, {currentUser.first_name}</h1>
//     <button onClick={logout}>Logout</button>
//   </div>
// );
//
// const MainPage = ({ currentUser, logout }) => (
//   currentUser ? user(currentUser, logout) : noUser()
// );
