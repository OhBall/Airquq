import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link
} from 'react-router-dom';

import Modal from './modal/modal';
import NavbarContainer from './greeting/navbar_container';
import HomepageContainer from './homepage/homepage_container';
import ListingShowContainer from './listing/listing_show_container';
import TripIndexContainer from './trips/trip_index_container';
import { ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <Modal />
    <NavbarContainer />
    <header>
      <Route exact path="/" component={HomepageContainer} />
      <Route path="/listings/:listingId" component={ListingShowContainer} />
      <Route path="/trips" component={TripIndexContainer} />
    </header>
  </div>
);

export default App;