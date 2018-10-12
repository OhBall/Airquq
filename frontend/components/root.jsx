import React from 'react';
import App from './app';
import StartFromTop from './start_from_top';
import { Provider } from 'react-redux';
import { HashRouter } from 'react-router-dom';

const Root = ({ store }) => (
  <Provider store={ store } >
    <HashRouter >
      <StartFromTop>
        <App />
      </StartFromTop>
    </HashRouter>
  </Provider>
);

export default Root;