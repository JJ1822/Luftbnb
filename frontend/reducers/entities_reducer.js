import spotReducer from './spot_reducer';
import ReviewsReducer from './review_reducer';
import { combineReducers } from 'redux';


const entitiesReducer = combineReducers({
  spots: spotReducer,
  reviews : ReviewsReducer
});

export default entitiesReducer;
