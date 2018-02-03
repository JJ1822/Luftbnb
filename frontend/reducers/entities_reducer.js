import spotReducer from './spot_reducer';
import { combineReducers } from 'redux';


const entitiesReducer = combineReducers({
  spots: spotReducer
});

export default entitiesReducer;
