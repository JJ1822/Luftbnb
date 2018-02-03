import * as SpotApi from '../util/spot_api_util';

export const RECEIVE_ALL_SPOTS = 'RECEIVE_ALL_SPOTS';

const receiveAllSpots = (spots) => ({
  type: RECEIVE_ALL_SPOTS,
  spots
});

export const fetchSpots = () => (dispatch) => {
  SpotApi.fetchSpots().then(spots => dispatch(receiveAllSpots(spots)));
};
