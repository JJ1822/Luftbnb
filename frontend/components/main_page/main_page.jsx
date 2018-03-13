import React from 'react';
import { Link } from 'react-router-dom';
import Modal from 'react-modal';
import SpotIndexItem from './spot_index_item';

const bounds = { bounds: {
    northEast: {latitude: 48.241715, longitude: -63.925213},
    southWest: {latitude: 22.163913, longitude: -129.623454}
    }
  }

class MainPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      modalIsOpen: false
    };
    this.spots = [];
    this.openModal = this.openModal.bind(this);
  }

  componentWillMount() {
    this.props.fetchSpots(bounds)

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
    // if(!this.props.spots.length) {
    //   return null;
    // }

    const title = () => {
      if(this.props.currentUser && this.props.pathname === "/" ) {
        return <h3>Explore Luftbnb</h3>
        }
      }

    const explore = () => {
      if(this.props.currentUser && this.props.pathname === "/" ) {
        return <h3>Browse available homes</h3>
        }
      }



    const randSpot = () => {

      if(this.props.currentUser && this.props.pathname === "/" ) {
        const spotItem = this.props.spots.slice(7,12).map(spot => <SpotIndexItem key={spot.id} spot={spot} />);
        return (
            <div className="spot-item-main">
              <ul className="main-ul">
                {spotItem}
              </ul>
            </div>
          );
        }
      }

    const navButtons = () => {
      if(this.props.currentUser && this.props.pathname === "/" ) {
        return (
              <div className="cont">

                <Link className="loc-link" to="/city/sanfrancisco">
                  <div className="loc-button" id="1">
                    <div className="photo"></div>
                    <h1>San Francisco</h1>
                  </div>
                </Link>

                <Link  className="loc-link" to="/city/austin">
                  <div onClick={this.handleClick} className="loc-button" id="2">
                    <div className="photoa"></div>
                    <h1>Austin</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/city/sandiego">
                  <div className="loc-button">
                    <div className="photosan"></div>
                    <h1>San Diego</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/city/losangeles">
                  <div className="loc-button">
                    <div className="photola"></div>
                    <h1>Los Angeles</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/city/denver">
                  <div className="loc-button">
                    <div className="photoden"></div>
                    <h1>Denver</h1>
                  </div>
                </Link>

                <Link className="loc-link" to="/city/houston">
                  <div className="loc-button">
                    <div className="photohou"></div>
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

      <div className="">
        <header className="header freeze">
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
            <a href="https://github.com/JJ1822/"><i className="devicon-github-plain colored"></i></a>
            <a className ="linkin" href="https://www.linkedin.com/in/jay-johnson-4b577341/"><i className="fab fa-linkedin"></i></a>
          </div>



            {this.loginLink()}
          </nav>
        </header>
        <div className="navigation-div">
          {title()}
          {navButtons()}
          <div className="randomspots">
            {explore()}
            {randSpot()}
          </div>

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
