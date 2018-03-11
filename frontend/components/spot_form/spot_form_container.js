import { connect } from 'react-redux';
import { createSpot } from '../../actions/spot_actions';
import SpotForm from './spot_form';

const mapStateToProps = ({ ui, session }) => ({
  errors: ui.errors,
  user: session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  createSpot: spot => dispatch(createSpot(spot))
});

export default connect(mapStateToProps, mapDispatchToProps)(SpotForm);
