import React from 'react';

const Amenities = (props) => {
  const { airConditioning, heating, essentials, wifi, tv, washer, kitchen, freeParking, hairDryer, shampoo } = props.listing

  const amenities = [airConditioning, heating, essentials, wifi, tv, washer, kitchen, freeParking, hairDryer, shampoo];
  const name = ['airConditioning', 'heating', 'essentials', 'wifi', 'tv', 'washer', 'kitchen', 'freeParking', 'hairDryer', 'shampoo'];
  const icon = [<i className="fas fa-columns"></i>, <i className="fas fa-thermometer-three-quarters"></i>, <i className="fas fa-align-center"></i>, <i className="fas fa-wifi"></i>, <i className="fas fa-tv"></i>, <i className="fas fa-tshirt"></i>, <i className="fas fa-utensils"></i>, <i className="fas fa-parking"></i>, <i className="fas fa-charging-station"></i>, <i className="fas fa-prescription-bottle"></i>];

  const amenitiesDisplay = amenities.map((el, idx) => {
    if (el) {
      return (
        <li key={idx}>
        {icon[idx]}
        <p className="amenities-text">{name[idx]}</p>
        </li>
      )
    }
  });

  return (
    <div className="listing-show-amenities-container">
      <ul className="listing-show-amenities-ul">
        {amenitiesDisplay}
      </ul>
    </div>
  )
}

export default Amenities;