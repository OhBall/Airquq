import React from 'react';
import { withRouter } from 'react-router-dom';

class StartFromTop extends React.Component {
  componentDidUpdate(oldProps) {
    if (this.props.location !== oldProps.location) {
      window.scrollTo(0, 0);
    }
  }

  render() {
    return this.props.children;
  }
}

export default withRouter(StartFromTop);