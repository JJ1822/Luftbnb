import { UPDATE_BOUNDS } from '../actions/filter_actions';
import merge from 'lodash/merge';

const filterReducer = (state = {}, action) => {
  switch(action.type) {
    case UPDATE_BOUNDS:
      return merge({}, state, {bounds: action.bounds});
    default:
      return state;
  }
};

export default filterReducer;
