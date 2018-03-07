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
    const navButtons = () => {
      if(this.props.currentUser && this.props.pathname === "/" ) {
        return (
              <div>

                <Link className="loc-link" to="/spots">
                  <div className="loc-button">
                    <div className="photo"></div>
                    <h1>San Francisco</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/spots">
                  <div className="loc-button">
                    <div className="photo"></div>
                    <h1>Austin</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/spots">
                  <div className="loc-button">
                    <div className="photo"></div>
                    <h1>San Diego</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/spots">
                  <div className="loc-button">
                    <div className="photo"></div>
                    <h1>Los Angeles</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/spots">
                  <div className="loc-button">
                    <div className="photo"></div>
                    <h1>Denver</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/spots">
                  <div className="loc-button">
                    <div className="photo"></div>
                    <h1>Houston</h1>
                  </div>
                </Link>

              </div>
        );
      }
    };
    const background = () => {
      if(!this.props.currentUser) {
        return <div className="background-pic"></div>;
      }
    };
    return(

      <div className="freeze">
        <header className="header">
          <nav className="header-nav">
            <div className="left">
              <h1 className="header-logo">
              <Link to="/">
                <img src={window.staticImages.headerImage}></img>
              </Link>
            </h1>
            <div className="git">
              <span>Airbnb clone</span>
              <br></br>
              <span>  by Jay Johnson |</span>
            </div>
          </div>

            {this.loginLink()}
          </nav>
        </header>
        <div className="navigation-div">

          {navButtons()}
        </div>
        {background()}
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
