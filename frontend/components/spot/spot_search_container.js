import { connect } from 'react-redux';
import { fetchSpots } from '../../actions/spot_actions';
import SpotSearch from './spot_search';


const mapStateToProps = (state) => ({
  spots: Object.values(state.entities.spots)
});

const mapDispatchToProps = (dispatch) => ({
  fetchSpots: () => dispatch(fetchSpots())
});

export default connect(mapStateToProps, mapDispatchToProps)(SpotSearch);
