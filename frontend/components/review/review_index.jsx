import React from 'react';
import ReviewText from './review_text';
import ReviewStars from './review_stars';

class ReviewIndex extends React.Component {

  displayReviews(reviews, reviewNum) {
    const user = 'abc';
    return reviews.map(review => (
      <ReviewText key={review.id} review={review} user={user}/>
    ))
  }

  render() {
    const reviews = Object.values(this.props.reviews);
    const reviewNum = Object.keys(this.props.reviews).length;
    return (
      <div>
        <ReviewStars reviews={reviews} reviewNum={reviewNum} />
        <div>{this.displayReviews(reviews, reviewNum)}</div>
      </div>
    )
  }
}

export default ReviewIndex;