import { RECEIVE_REVIEW, RECEIVE_SPOT } from '../actions/spot_actions';
import merge from 'lodash/merge';

const reviewReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_SPOT:
      const reviews = action.payload.reviews;
      return merge({}, state, reviews);
    case RECEIVE_REVIEW:
      return merge({}, state, {[action.review.id]: action.review});
    default:
      return state;
  }
};

export default reviewReducer;
