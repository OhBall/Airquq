import 'react-dates/initialize';
import 'react-dates/lib/css/_datepicker.css';


import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link
} from 'react-router-dom';

import Modal from './modal/modal';
import NavbarContainer from './navbar/navbar_container';
import HomepageContainer from './homepage/homepage_container';
import ListingShowContainer from './listing/listing_show_container';
import TripIndexContainer from './trips/trip_index_container';
import { ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <Modal />
    <NavbarContainer />
    <header>
      {/* <Switch> */}
        <Route exact path="/listings/:listingId" component={ListingShowContainer} />
        <Route exact path="/trips" component={TripIndexContainer} />
        <Route path="/" component={HomepageContainer} />
        {/* <Redirect to="/" /> */}
      {/* </Switch> */}
    </header>
  </div>
);

export default App;