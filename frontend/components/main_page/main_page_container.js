import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import MainPage from './main_page';

const mapStateToProps = ({ session }, ownProps) => {

  return {
    currentUser: session.currentUser,
    pathname: ownProps.location.pathname
  };
};

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout())
});

export default connect(mapStateToProps, mapDispatchToProps)(MainPage);
