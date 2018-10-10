import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link
} from 'react-router-dom';

import NavbarContainer from './greeting/navbar_container';
import Modal from './modal/modal';
import { ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <Modal />
    <header>
      <NavbarContainer />
    </header>

  </div>
);

export default App;