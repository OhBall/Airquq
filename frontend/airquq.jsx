import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  const root = document.getElementById('root');

  // testing start
  window.store = store;
  // testing end

  ReactDOM.render(<Root store={ store } />, root);
});