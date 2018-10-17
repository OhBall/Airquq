import 'react-dates/initialize';
import 'react-dates/lib/css/_datepicker.css';
import React from 'react';
import {
  Route,
  Redirect,
  Switch,
} from 'react-router-dom';

import Modal from './modal/modal';
import NavbarContainer from './navbar/navbar_container';
import HomepageContainer from './homepage/homepage_container';
import ListingShowContainer from './listing/listing_show_container';
import TripIndexContainer from './trips/trip_index_container';
import SearchContainer from './search/search_container';
import Splash from './homepage/splash';
import { ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <Modal />
    <Route path="/(listings|trips|search)" component={NavbarContainer} />
    <header>
      <Switch>
        <Route exact path="/listings/:listingId" component={ListingShowContainer} />
        <ProtectedRoute exact path="/trips" component={TripIndexContainer} />
        <Route exact path="/listings" component={HomepageContainer} />
        <Route path="/search" component={SearchContainer} />
        <Route exact path="/" component={Splash} />
        <Redirect to="/listings" />
      </Switch>
    </header>
  </div>
);

export default App;