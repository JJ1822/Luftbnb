import * as SessionApiUtil from './util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});

export const login = formUser => dispatch => (
  SessionApiUtil.login(formUser).then(user => (receiveCurrentUser(user)),
    err => (dispatch(receiveErrors(err.responseJSON))
  ))
);

export const signup = formUser => dispatch => (
  SessionApiUtil.signup(formUser).then(user => (receiveCurrentUser(user)),
    err => (dispatch(receiveErrors(err.responseJSON))
  ))
);

export const logout = () => dispatch => (
  SessionApiUtil.logout().then(user => receiveCurrentUser(null))
);
