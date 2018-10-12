import React from 'react';
// import profile from '../../../app/assets/images/profile.png';

const ReviewText = ({ review }) => {
  return(
    <div className="text-review-container">
      <img src={window.images.profile} />
      <p>{review.body}</p>
    </div>
  )
}

export default ReviewText;