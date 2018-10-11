import React from 'react';

const DetailInfo = (props) => {
  const { bedNum, bathNum, roomNum } = props.listing;
  return (
    <div className="listing-show-detail-container">
      <div><i className="fas fa-user-friends"></i>{bedNum*2} guests</div>
      <div><i className="fas fa-door-open"></i>{roomNum} bedroom</div>
      <div><i className="fas fa-bed"></i>{bedNum} beds</div>
      <div><i className="fas fa-bath"></i>{bathNum} baths</div>
    </div>
  )
}

export default DetailInfo;