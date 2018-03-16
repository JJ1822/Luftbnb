import { connect } from 'react-redux';
import { createSpot } from '../../actions/spot_actions';
import SpotForm from './spot_form';

const mapStateToProps = ({ errors, session, entities }) => ({
  errors: errors.session,
  user: session.currentUser,
  spots: entities.spots
});

const mapDispatchToProps = (dispatch) => ({
  createSpot: spot => dispatch(createSpot(spot))
});

export default connect(mapStateToProps, mapDispatchToProps)(SpotForm);
