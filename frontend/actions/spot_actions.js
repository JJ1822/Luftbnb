import * as SpotApi from '../util/spot_api_util';

export const RECEIVE_ALL_SPOTS = 'RECEIVE_ALL_SPOTS';

const receiveAllSpots = (spots) => ({
  type: RECEIVE_ALL_SPOTS,
  spots
});

export const fetchSpots = (bounds) => (dispatch) => {
  SpotApi.fetchSpots(bounds).then(spots => dispatch(receiveAllSpots(spots)));
};
