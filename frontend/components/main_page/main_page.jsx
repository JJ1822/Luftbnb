import React from 'react';
import { Link } from 'react-router-dom';

class MainPage extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
      return(
        <header className="header">
          <nav className="header-nav">

            <h1 className="header-logo">
              <img src={window.staticImages.headerImage}></img>
            </h1>

            <div className="header-list">
              <div><Link to="">Become a host</Link></div>
              <div><Link to="/signup">Sign up</Link></div>
              <div><Link to="/login">Log In</Link></div>
            </div>

          </nav>
        </header>

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
