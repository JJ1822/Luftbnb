import { connect } from 'react-redux';
import { fetchSpot } from '../../actions/spot_actions';
import SpotShow from './spot_show';

const mapStateToProps = (state, { match }) => {
  const spotId = parseInt(match.params.spotId);
  const spot = state.entities.spots[spotId];
  let reviews;
  if (state.entities.spots[spotId] && state.entities.spots[spotId].reviews) {
    reviews = Object.values(state.entities.spots[spotId].reviews);
  } else {
    reviews = [];
  }
  return {
    spotId,
    spot,
    reviews: reviews
  };
};

const mapDispatchToProps = (dispatch) => ({
  fetchSpot: (id) => dispatch(fetchSpot(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(SpotShow);
