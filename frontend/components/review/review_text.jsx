import React from 'react';

const ReviewText = ({ review }) => {
  return(
    <div className="text-review-container">
      <img src={review.author.photoUrl} />
      <div className="review-body">
        <div className="review-first-line">
          <p className="review-author-name">{review.author.firstName} ·</p>
          <div>{review.createdAt.slice(0, 10)}</div>
        </div>
        <p>{review.body}</p>
      </div>
    </div>
  )
}

export default ReviewText;