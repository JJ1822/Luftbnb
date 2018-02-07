import { connect } from 'react-redux';
import { fetchSpots } from '../../actions/spot_actions';
import SpotSearch from './spot_search';
import { updateBounds } from '../../actions/filter_actions';


const mapStateToProps = (state) => ({
  spots: Object.values(state.entities.spots),
  bounds: state.ui.filters.bounds
});

const mapDispatchToProps = (dispatch) => ({
  fetchSpots: () => dispatch(fetchSpots()),
  updateBounds: (bounds) => dispatch(updateBounds(bounds))
});

export default connect(mapStateToProps, mapDispatchToProps)(SpotSearch);
