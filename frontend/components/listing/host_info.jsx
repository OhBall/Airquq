import React from 'react';

const HostInfo = ({ listing }) => {
  const hostJoinDate = listing.host.createdAt.slice(0, 7)

  return (
    <div className="host-info-container" >
      <div className="host-text-container">
        <h3>Hosted by {listing.host.firstName}</h3>
        <p>{listing.city}, {listing.state}, {listing.country} · Joined in {hostJoinDate}</p>
        <p><i className="host-start fas fa-star"></i>{listing.host.reviewNum} reviews</p>
      </div>

      <img className="host-info-img" src={window.images.profile} />
    </div>
  )
};

export default HostInfo;