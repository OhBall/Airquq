import React from 'react';
import SplashNav from '../navbar/splash_nav';
import SplashSearchBar from '../navbar/splash_search_bar';
import DotLoading from '../dot_loading';

class Splash extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      loading: true
    }

    setTimeout(() => this.setState({ loading: false }), 1500);
  }
  render() {
    if (this.state.loading) {
      return <DotLoading state={this.state} />;
    } else {
      return (
        <div className="splash-container">
          <SplashNav />
        <div id="splash-search-container">
          <SplashSearchBar />
          <p id="welcome-message">Book unique homes around the world.</p>
        </div>
          <img src={window.images.splash} />
        </div>
      )
    }
  }
}

export default Splash;