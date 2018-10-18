import React from 'react';

class Filterbar extends React.Component {
  render() {
    return (
      <div className="filterbar-container">
        <div id="filter-bar-placeholder"></div>
        <ul>
          <li onClick={() => this.props.openModal('price')}>Price</li>
        </ul>
      </div>
    )
  }
}

export default Filterbar;