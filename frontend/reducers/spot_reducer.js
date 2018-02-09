import { RECEIVE_ALL_SPOTS, RECEIVE_SINGLE_SPOT, RECEIVE_REVIEW } from '../actions/spot_actions';
import merge from 'lodash/merge';

const spotReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ALL_SPOTS:
      return action.spots;
    case RECEIVE_SINGLE_SPOT:
      let spot = action.payload;
      return merge({}, state, { [spot.id]: spot});
    default:
      return state;
  }
};

export default spotReducer;
