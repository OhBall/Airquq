import React from 'react';

class Filterbar extends React.Component {
  render() {
    return (
      <div className="filterbar-container">
        <ul>
          <li onClick={() => this.props.openModal('price')}>Price</li>
          <li>Guests</li>
          <li>Ratings</li>
        </ul>
      </div>
    )
  }
}

export default Filterbar;