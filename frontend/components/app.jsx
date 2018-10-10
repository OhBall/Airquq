import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link
} from 'react-router-dom';

import Modal from './modal/modal';
import NavbarContainer from './greeting/navbar_container';
import ListingIndexContainer from './listing/listing_index_container';
import { ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <Modal />
    <NavbarContainer />
    <header>
      <ListingIndexContainer />
    </header>
  </div>
);

export default App;