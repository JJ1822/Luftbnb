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
    if(this.props.match.path === "/") {
      // this.props.fetchSpots(bounds)
    }

  }


  myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
    document.getElementById("dropdown").classList.toggle("show-2");
  }

  loginLink() {
    if(this.props.currentUser) {
      return (
        <div id="dropdown" className="header-list dropdown-content">
          <div className="link-item"><Link to="/host">Become a host</Link></div>
          <div className="link-item"><Link to="/">Trips</Link></div>
          <div className="link-item last-item"><Link onClick={this.props.logout} to="/">Log out</Link></div>
        </div>
      );
    } else {
      return (
        <div id="dropdown" className="header-list dropdown-content">
          <div className="link-item"><Link onClick={this.openModal} to="/signup">Sign up</Link></div>
          <div className="link-item last-item"><Link onClick={this.openModal} to="/login">Log In</Link></div>
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
                {window.scrollTo(0, 0)}

                  <div className="loc-button">
                    <Link className="loc-link" to="/city/sanfrancisco">
                      <div className="photo"></div>
                      <div className="loc-title"><h1>San Francisco</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link className="loc-link" to="/city/austin">
                      <div className="photoa"></div>
                      <div className="loc-title"><h1>Austin</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link className="loc-link" to="/city/sandiego">
                      <div className="photosan"></div>
                      <div className="loc-title"><h1>San Diego</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link className="loc-link" to="/city/losangeles">
                      <div className="photola"></div>
                      <div className="loc-title"><h1>Los Angeles</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link className="loc-link" to="/city/denver">
                      <div className="photoden"></div>
                      <div className="loc-title"><h1>Denver</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link className="loc-link" to="/city/houston">
                      <div className="photohou"></div>
                      <div className="loc-title"><h1>Houston</h1></div>
                    </Link>
                  </div>

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
              <div onClick={this.myFunction}className="header-image">
                <Link to={this.props.pathname}>
                  <img src={window.staticImages.headerImage}></img>
                </Link>
              </div>
            </h1>
            <div id="myDropdown" className="git dropdown-content">
              <div className="drop-div">
                <div>
                  <span>Airbnb clone</span>
                  <br></br>
                  <span>  by Jay Johnson |</span>
                </div>
                <div className="icon-div">
                  <a className ="linkin" href="https://github.com/JJ1822/"><i className="fab fa-github-square"></i></a>
                  <a className ="linkin" href="https://www.linkedin.com/in/jay-johnson-4b577341/"><i className="fab fa-linkedin"></i></a>
                </div>
              </div>


            </div>
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
