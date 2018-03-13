import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { fetchSpots } from '../../actions/spot_actions';
import MainPage from './main_page';

const mapStateToProps = ({ session, entities }, ownProps) => {

  return {
    spots: Object.values(entities.spots),
    currentUser: session.currentUser,
    pathname: ownProps.location.pathname
  };
};

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  fetchSpots: (bounds) => dispatch(fetchSpots(bounds))
});

export default connect(mapStateToProps, mapDispatchToProps)(MainPage);
