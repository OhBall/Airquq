import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link
} from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';
import Modal from './modal/modal';
import { ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <Modal />
    <header>
      <h1>Welcome to Airquq!</h1>
      <GreetingContainer />
    </header>

  </div>
);

export default App;