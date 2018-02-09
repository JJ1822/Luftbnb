import * as SpotApi from '../util/spot_api_util';
import { receiveErrors } from './session_actions';

export const RECEIVE_ALL_SPOTS = 'RECEIVE_ALL_SPOTS';
export const RECEIVE_SINGLE_SPOT = 'RECEIVE_SINGLE_SPOT';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';

const receiveReview = (review) => ({
  type: RECEIVE_REVIEW,
  review
});

const receiveAllSpots = (spots) => ({
  type: RECEIVE_ALL_SPOTS,
  spots
});

const receiveSingleSpot = (payload) => ({
  type: RECEIVE_SINGLE_SPOT,
  payload
});

export const createReview = (formReview) => (dispatch) => {
  SpotApi.createReview(formReview).then(review => dispatch(receiveReview(review)));
};

export const fetchSpots = (bounds) => (dispatch) => {
  SpotApi.fetchSpots(bounds).then(spots => dispatch(receiveAllSpots(spots)));
};

export const fetchSpot = (id) => (dispatch) => {
  SpotApi.fetchSpot(id).then(spot => dispatch(receiveSingleSpot(spot)));
};

export const createSpot = (formSpot) => (dispatch) => (
  SpotApi.createSpot(formSpot).then(spot => dispatch(receiveSingleSpot(spot)),
    err => (dispatch(receiveErrors(err.responseJSON))
  ))
);
