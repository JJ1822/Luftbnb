import { RECEIVE_ALL_SPOTS } from '../actions/spot_actions';

const spotReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ALL_SPOTS:
      return action.spots;
    default:
      return state;
  }
};

export default spotReducer;
