import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

// testing imports
import { openModal } from './actions/modal_actions';
import { fetchBooking, fetchBookings, createBooking, updateBooking, deleteBooking } from './actions/booking_actions';
// testing imports ends

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = {
      session: { id: window.currentUser.id },
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  
  // testing start
  window.openModal = openModal;
  window.store = store;
  window.fetchBooking = fetchBooking;
  window.fetchBookings = fetchBookings();
  window.createBooking = createBooking;
  window.updateBooking = updateBooking;
  window.deleteBooking = deleteBooking;
  // testing end
  
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={ store } />, root);
});