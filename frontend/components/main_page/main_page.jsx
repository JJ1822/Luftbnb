import React from 'react';
import { Link } from 'react-router-dom';
import Modal from 'react-modal';
import SpotIndexItem from './spot_index_item';
import SearchBar from '../search_bar/search_bar';

const bounds = {  bounds: {
  northEast: {latitude: 48.241715, longitude: -63.925213},
  southWest: {latitude: 22.163913, longitude: -129.623454}
    }
  }

class MainPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      modalIsOpen: false,
      latitude: 0,
      longitude: 0
    };
    this.spots = [];
    this.openModal = this.openModal.bind(this);
    this.closeOut = this.closeOut.bind(this);
    this.toggleFunction = this.toggleFunction.bind(this);
    this.updateLatLong = this.updateLatLong.bind(this);
    this.checkAuth = this.checkAuth.bind(this);
  }

  componentDidMount() {
    // if(this.props.match.path === "/") {
      this.props.fetchSpots(bounds);
      // this.spots = this.props.spots;
    // }

  }

  updateLatLong(places) {
    this.setState({
      latitude: places.lat(),
      longitude: places.lng()

    }, () => this.props.history.push(`/city?lat=${this.state.latitude}&lng=${this.state.longitude}`))
  }



  toggleFunction() {
    if ( $(window).width() > 600) {
  //Add your javascript for large screens here
      this.props.history.push("/")

    } else {
  //Add your javascript for small screens here
    document.getElementById("myDropdown").classList.toggle("show");
    document.getElementById("dropdown").classList.toggle("show-2");
      }
  }
  closeOut() {
    this.props.logout();
    this.toggleFunction();
  }

  loginLink() {
    if(this.props.currentUser) {
      return (
        <div id="dropdown" className="header-list dropdown-content">
          <div className="link-item"><Link onClick={this.toggleFunction} to="/host" replace>Become a host</Link></div>
          <div className="link-item"><Link onClick={this.toggleFunction} to="/" >Trips</Link></div>
          <div className="link-item last-item"><Link onClick={this.closeOut} to="/" >Log out</Link></div>
        </div>
      );
    } else {
      return (
        <div id="dropdown" className="header-list dropdown-content">
          <div className="link-item"><Link onClick={this.openModal} to="/signup" >Sign up</Link></div>
          <div className="link-item last-item"><Link onClick={this.openModal} to="/login" >Log In</Link></div>
        </div>
        );
      }
  }

  checkAuth(e) {
    if(!this.props.currentUser) {
      e.preventDefault();
      this.props.history.push('/login')
    }
  }

  openModal() {
    this.setState({modalIsOpen: true});
    this.toggleFunction();
  }


  render() {
    // if(!this.props.spots.length) {
    //   return null;
    // }

    const title = () => {
      if(this.props.pathname === "/" ) {
        return <h3>Explore Luftbnb</h3>
        }
      }

    const explore = () => {
      if(this.props.pathname === "/" ) {
        return <h3>Browse available homes</h3>
        }
      }



    const randSpot = () => {

      if(this.props.pathname === "/" ) {
        const spotItem = this.props.spots.slice(0,5).map(spot => <SpotIndexItem checkAuth={this.checkAuth} key={spot.id} spot={spot} />);
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
      if(this.props.pathname === "/" ) {
        return (
              <div className="cont">
                {window.scrollTo(0, 0)}

                  <div className="loc-button">
                    <Link onClick={this.checkAuth} className="loc-link" to='/city?lat=37.778839&lng=-122.428188'>
                      <div className="photo"></div>
                      <div className="loc-title"><h1>San Francisco</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link onClick={this.checkAuth} className="loc-link" to='/city?lat=30.271633&lng=-97.744802'>
                      <div className="photoa"></div>
                      <div className="loc-title"><h1>Austin</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link onClick={this.checkAuth} className="loc-link" to='/city?lat=32.715952&lng=-117.160570'>
                      <div className="photosan"></div>
                      <div className="loc-title"><h1>San Diego</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link onClick={this.checkAuth} className="loc-link" to='/city?lat=34.043709&lng=-118.247979'>
                      <div className="photola"></div>
                      <div className="loc-title"><h1>Los Angeles</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link onClick={this.checkAuth} className="loc-link" to='/city?lat=39.742881&lng=-104.987526'>
                      <div className="photoden"></div>
                      <div className="loc-title"><h1>Denver</h1></div>
                    </Link>
                  </div>

                  <div className="loc-button">
                    <Link onClick={this.checkAuth} className="loc-link" to='/city?lat=29.757229&lng=-95.361977'>
                      <div className="photohou"></div>
                      <div className="loc-title"><h1>Houston</h1></div>
                    </Link>
                  </div>

              </div>
        );
      }
    };
    const background = () => {
      // if(!this.props.currentUser) {
      //   return <div className="background-pic"></div>;
      // }
    };
    return(

      <div className="">
        <header className="header freeze">
          <nav className="header-nav">
            <div className="left">
              <h1 className="header-logo">
              <div onClick={this.toggleFunction}className="header-image">
                <Link to={this.props.pathname}>
                  <img src={window.staticImages.headerImage}></img>
                </Link>
              </div>
            </h1>
            <div id="myDropdown" className="git dropdown-content">
              <div className="drop-div">
                <div className="about-div">
                  <span>Airbnb clone</span>

                  <span className="span-name">  by Jay Johnson |</span>

                  <a className ="linkin margin-no" href="https://github.com/JJ1822/"><i className="fab fa-github-square"></i></a>
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




// <SearchBar update={this.updateLatLong} history={this.props.history} lat={this.state.latitude} />
