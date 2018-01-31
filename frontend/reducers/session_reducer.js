import RECEIVE_CURRENT_USER from './actions/session_action';
import merge from 'lodash/merge';

let initState = {
  currentUser: null,
  errors: []
};

const sessionReducer = (state = initState, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      let currentUser = action.currentUser;
      return merge({}, state, { currentUser });
    default:
      return state;
  }
};
