import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { fetchSpots } from './actions/spot_actions';
import { updateBounds } from './actions/filter_actions';


document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  let store;
    if (window.currentUser) {
      const preloadedState = { session: { currentUser: window.currentUser } };
      store = configureStore(preloadedState);
      delete window.currentUser;
    } else {
        store = configureStore();
      }

  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.fetchSpots = fetchSpots;
  window.updateBounds = updateBounds;

  ReactDOM.render(<Root store={store} />, root);
});
